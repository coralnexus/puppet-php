
define php::module (

  $package        = $name,
  $config_name    = $name,
  $ensure         = $php::params::module_ensure,
  $package_prefix = $php::params::module_package_prefix,
  $extra_packages = [],
  $extra_ensure   = $php::params::module_extra_ensure,
  $content        = $php::params::module_content,
  $provider       = $php::params::module_provider,
  $conf_dir       = $php::params::conf_dir

) {

  include php

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
      content  => $content ? {
        ''       => "extension=${package_prefix}${config_name}.so",
        default  => $content,
      },
    }
  }
}
