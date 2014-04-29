#
# PECL Puppet package provider
#
#-------------------------------------------------------------------------------
#
require 'puppet/provider/package'

#
# Package provider definition
#
Puppet::Type.type(:package).provide :pecl, :parent => Puppet::Provider::Package do

  #-----------------------------------------------------------------------------
  # Properties
  #  
  desc 'PHP PECL support. By default uses the installed channels, but you
        can specify the path to a PECL package via ``source``.'
  
  has_feature :versionable
  has_feature :upgradeable
  
  commands :peclcmd => 'pecl'
  
  #-----------------------------------------------------------------------------
  # Capture all of the PECL extensions from a given string.
  #
  # Returned by [ pecl list ]
  #
  def self.pecllist(options)
    command = [command(:peclcmd), 'list']
    
    begin
      list = execute(command).split(/\n/).collect do |desc|
        if options[:justme]
          if desc =~ /^#{options[:justme]}/
            if pecloptions = peclsplit(desc, options)
              pecloptions[:provider] = :pecl
              pecloptions
            else
              nil
            end
          else
            nil
          end
        else
          if pecloptions = peclsplit(desc, options)
            pecloptions[:provider] = :pecl
            pecloptions
          else
            nil
          end
        end
      end.reject { |p| p.nil? }
      
    rescue Puppet::ExecutionFailure => detail
      raise Puppet::Error, 'Could not list PECL names: %s' % detail
    end
    
    if options[:justme]
      return list.shift
    else
      return list
    end
  end

  #-----------------------------------------------------------------------------
  # Extract meta data from a text string about PECL packages.
  #
  def self.peclsplit(desc, options = {})
    case desc    
    when /^.*Installed.*/i
      return nil
    
    when /^=/
      return nil
    
    when /^.*Package.*/i
      return nil
    
    when /^\s*$/
      return nil
    
    when /^\(no packages installed\)$/i
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
      Puppet.warning 'Could not match pecl %s' % desc
      return nil
    end
  end

  #-----------------------------------------------------------------------------
  # Return all local PECL packages.
  #
  def self.instances
    which('pecl') or return []
    pecllist(:local => true).collect do |options|
      new(options)
    end
  end

  #-----------------------------------------------------------------------------
  # Install or upgrade PECL packages.
  #
  def install(useversion = true)
    command = ['upgrade']

    if source = @resource[:source]
      command << source
    else
      if (! @resource.should(:ensure).is_a? Symbol) and useversion
        command << "#{@resource[:name]}-#{@resource.should(:ensure)}"
      else
        command << @resource[:name]
      end
    end
    
    peclcmd(*command)
  end

  #-----------------------------------------------------------------------------
  # Get the latest version available for a PECL package.
  #
  def latest
    version = ''
    command = [command(:peclcmd), 'remote-info', @resource[:name]]
    list = execute(command).split(/\n/).collect do |desc|
      if desc =~ /^Latest/
        version = desc.split[1]
      end
    end
    return version
  end

  #-----------------------------------------------------------------------------
  # Return information for a specific PECL package.
  #
  def query
    self.class.pecllist(:justme => @resource[:name])
  end

  #-----------------------------------------------------------------------------
  # Uninstall a specific PECL package.
  #
  def uninstall
    output = peclcmd 'uninstall', @resource[:name]
    if output =~ /^uninstall ok/
    else
      raise Puppet::Error, output
    end
  end

  #-----------------------------------------------------------------------------
  # Update a PECL package.
  #
  def update
    self.install(false)
  end
end

