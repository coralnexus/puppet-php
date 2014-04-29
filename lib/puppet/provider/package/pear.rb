#
# Pear Puppet package provider
#
#-------------------------------------------------------------------------------
#
require 'puppet/provider/package'

#
# Package provider definition
#
Puppet::Type.type(:package).provide :pear, :parent => Puppet::Provider::Package do

  #-----------------------------------------------------------------------------
  # Properties
  #
  desc 'PHP PEAR support. By default uses the installed channels, but you
        can specify the path to a pear package via ``source``.'

  has_feature :versionable
  has_feature :upgradeable

  commands :pearcmd => 'pear'
  
  #-----------------------------------------------------------------------------
  # Capture all of the Pear extensions from a given string.
  #
  # Returned by [ pear list ]
  #
  def self.pearlist(options)
    command = [command(:pearcmd), 'list', '-a']
    
    begin
      list = execute(command).split(/\n/).collect do |desc|
        if options[:justme]
          if desc =~ /^#{options[:justme]}/
            if pearoptions = pearsplit(desc, options)
              pearoptions[:provider] = :pear
              pearoptions
            else
              nil
            end
          else
            nil
          end
        else
          if pearoptions = pearsplit(desc, options)
            pearoptions[:provider] = :pear
            pearoptions
          else
            nil
          end
        end

      end.reject { |p| p.nil? }
      
    rescue Puppet::ExecutionFailure => detail
      raise Puppet::Error, 'Could not list Pear names: %s' % detail
    end
    
    if options[:justme]
      return list.shift
    else
      return list
    end
  end

  #-----------------------------------------------------------------------------
  # Extract meta data from a text string about Pear packages.
  #
  def self.pearsplit(desc, options = {})
    case desc
    when /^INSTALLED/
      return nil
      
    when /^=/
      return nil
      
    when /^PACKAGE/
      return nil
      
    when /^$/
      return nil
      
    when /^\(no packages installed\)$/
      return nil
      
    when /^(\S+)\s+([.\da-zA-Z]+)\s+\S+/
      name    = $1
      version = $2
      
      Puppet.debug 'Pecl match %s  %s' % [ name, version ]
      
      return {
        :name   => name,
        :ensure => version
      }
      
    else
      Puppet.warning 'Could not match %s' % desc
      return nil
    end
  end

  #-----------------------------------------------------------------------------
  # Return all local Pear packages.
  #
  def self.instances(justme = false)
    which('pear') or return []
    pearlist(:local => true).collect do |options|
      new(options)
    end
  end
  
  #-----------------------------------------------------------------------------
  # Return all current Pear channels.
  #
  def self.channellist
    command = [command(:pearcmd), 'list-channels']
    list = execute(command).split(/\n/).collect do |desc|
      if channel_options = channelsplit(desc)
        channel_options
      else
        nil
      end
    end.reject { |p| p.nil? }
    return list
  end

  #-----------------------------------------------------------------------------
  # Extract meta data from a text string about Pear channels.
  #
  def self.channelsplit(desc)
    case desc
    when /^Registered/i
      return nil
      
    when /^=/
      return nil
      
    when /^Channel/i
      return nil
      
    when /^\s+/
      return nil
      
    when /^(\S+)/
      return $1.strip
      
    else
      Puppet.warning 'Could not match Pear channel %s' % desc
      return nil
    end
  end

  #-----------------------------------------------------------------------------
  # Install or upgrade Pear packages.
  #
  def install(useversion = true)

    command = ['upgrade', '--force']

    # Channel provided
    if source = @resource[:source]
      match = source.match(/^([^\/]+)(?:\/(.*))?$/)

      if match
        channel = match[1]
        package = match[2]
      end
      
      # Check if channel is available, if not, discover
      if match and !self.class.channellist().include?(channel)
        execute([command(:pearcmd), 'channel-discover', channel])
      end

      # Check if package is named in source, if not, use hash and append
      if match and (package.nil? or package.empty?) and (! @resource.should(:ensure).is_a? Symbol) and useversion
        source = source + "/#{@resource[:name]}-#{@resource.should(:ensure)}"
      end

      command << source

    # Default channel
    else
      if (!@resource.should(:ensure).is_a? Symbol) and useversion
        command << "#{@resource[:name]}-#{@resource.should(:ensure)}"
      else
        command << @resource[:name]
      end
    end

    pearcmd(*command)
  end

  #-----------------------------------------------------------------------------
  # Get the latest version available for a Pear package.
  #
  def latest
    # This always gets the latest version available.
    version = ''
    command = [command(:pearcmd), 'remote-info', @resource[:name]]
    list    = execute(command).split(/\n/).collect do |desc|
      if desc =~ /^Latest/
        version = desc.split[1]
      end
    end
    return version
  end

  #-----------------------------------------------------------------------------
  # Return information for a specific Pear package.
  #
  def query
    self.class.pearlist(:justme => @resource[:name].split('/').pop)
  end

  #-----------------------------------------------------------------------------
  # Uninstall a specific Pear package.
  #
  def uninstall
    output = pearcmd 'uninstall', @resource[:name]
    if output =~ /^uninstall ok/
    else
      raise Puppet::Error, output
    end
  end

  #-----------------------------------------------------------------------------
  # Update a Pear package.
  #
  def update
    self.install(false)
  end
end
