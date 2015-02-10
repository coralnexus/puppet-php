
define php::module (

  $package          = $name,
  $config_name      = $name,
  $ensure           = $php::params::module_ensure,
  $package_prefix   = $php::params::module_package_prefix,
  $extension_prefix = $php::params::module_extension_prefix,
  $extra_packages   = [],
  $extra_ensure     = $php::params::module_extra_ensure,
  $content          = $php::params::module_content,
  $provider         = $php::params::module_provider,
  $conf_dir         = $php::params::conf_dir,
  $service          = $php::params::service

) {

  if $service and defined(Service[$service]) {
    Package {
      notify => Service[$service],
    }
    File {
      notify => Service[$service],
    }
  }

  #-----------------------------------------------------------------------------
  # Installation

  if $ensure {
    Package {
      ensure  => $ensure,
      require => File['php-conf-dir'],
    }

    if $provider == 'pear' or $provider == 'pecl' {
      package { "php-${package}":
        name     => "${package_prefix}${package}",
        provider => $provider,
      }
    }
    else {
      package { "php-${package}": name => "${package_prefix}${package}" }
    }
  }

  #---

  if ! empty($extra_packages) {
    package { "php-extra-${package}":
      name    => $extra_packages,
      ensure  => $extra_ensure,
      require => Package["php-${package}"],
    }
  }

  #-----------------------------------------------------------------------------
  # Configuration

  if $content != undef {
    php::conf { $config_name:
      conf_dir => $conf_dir,
      content  => strip($content) ? {
        ''       => "extension=${extension_prefix}${config_name}.so",
        default  => $content,
      },
      service       => $service,
      update_notify => Exec["php-enable-${config_name}"]
    }
  }

  #---

  if $php::params::module_enable_command {
    exec { "php-enable-${config_name}":
      command     => "${php::params::module_enable_command} ${config_name}",
      refreshonly => true,
      notify      => Service[$service]
    }
  }
}
