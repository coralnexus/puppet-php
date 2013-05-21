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
  # If hash is indeed a hash and :justme is passed then all packages are
  # matched against that one and only the matching ones returned.
  #
  def self.pearlist(hash)
    command = [command(:pearcmd), 'list', '-a']

    begin
      list = execute(command).split(/\n/).collect do |set|
        if hash[:justme]
          if  set =~ /^hash[:justme]/
            if pearhash = pearsplit(set)
              pearhash[:provider] = :pear
              pearhash
            else
              nil
            end
          else
            nil
          end
        else
          if pearhash = pearsplit(set)
            pearhash[:provider] = :pear
            pearhash
          else
            nil
          end
        end

      end.reject { |p| p.nil? }
      
    rescue Puppet::ExecutionFailure => detail
      raise Puppet::Error, 'Could not list pears: %s' % detail
    end

    if hash[:justme]
      return list.shift
    else
      return list
    end
  end

  #-----------------------------------------------------------------------------
  # Extract meta data from a text string about Pear packages.
  #
  # Unfortunately, this is an ugly work around for a linux command that does not
  # seem to have a more programmatic way of rendering the data.
  #
  def self.pearsplit(desc)
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
  # Right now the :local option is not implemented but it would basically do 
  # what it's doing now anyway.  I guess this was for future expansion.
  #
  def self.instances
    which('pear') or return []
    pearlist(:local => true).collect do |hash|
      new(hash)
    end
  end
  
  #-----------------------------------------------------------------------------
  # Return all current Pear channels.
  #
  def self.channellist
    command = [command(:pearcmd), 'list-channels']
    list = execute(command).split(/\n/).collect do |set|
      if channelhash = channelsplit(set)
        channelhash
      else
        nil
      end
    end.reject { |p| p.nil? }
    return list
  end

  #-----------------------------------------------------------------------------
  # Extract meta data from a text string about Pear channels.
  #
  # Unfortunately, this is an ugly work around for a linux command that does not
  # seem to have a more programmatic way of rendering the data.
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
      $1.strip
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
      #dbg(source, 'install source')

      match = source.match(/^([^\/]+)(?:\/(.*))?$/)

      if match
        channel = match[1]
        package = match[2]
      end
      
      #dbg(channel, 'install channel')
      #dbg(package, 'install package')

      # Check if channel is available, if not, discover
      if match and !self.class.channellist().include?(channel)
        #dbg('discovering channels')
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

    #dbg(command, 'install command')
    pearcmd(*command)
  end

  #-----------------------------------------------------------------------------
  # Get the latest version available for a Pear package.
  #
  def latest
    # This always gets the latest version available.
    version = ''
    command = [command(:pearcmd), 'remote-info', @resource[:name]]
    list    = execute(command).split(/\n/).collect do |set|
      if set =~ /^Latest/
        version = set.split[1]
      end
    end
    #dbg(command, 'latest command')
    #dbg(version, 'latest version')
    return version
  end

  #-----------------------------------------------------------------------------
  # Return information for a specific Pear package.
  #
  def query
    self.class.pearlist(:justme => @resource[:name])
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
