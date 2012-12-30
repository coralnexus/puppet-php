
define php::module (

  $ensure         = $php::params::module_ensure,
  $package_prefix = $php::params::module_package_prefix,
  $extra_packages = [],
  $extra_ensure   = $php::params::module_extra_ensure,
  $content        = $php::params::module_content,
  $provider       = $php::params::module_provider,
  $conf_dir       = $php::params::conf_dir,
  $require        = undef,

) {

  include php

  #-----------------------------------------------------------------------------
  # Installation

  if $ensure != false {
    $real_require = $require ? {
      undef   => File['php-conf-dir'],
      default => flatten([ File['php-conf-dir'], $require ]),
    }

    Package {
      ensure  => $ensure,
      require => $real_require,
    }

    if $provider == 'pear' or $provider == 'pecl' {
      package { "php-${name}":
        name     => "${package_prefix}${name}",
        provider => $provider,
      }
    }
    else {
      package { "php-${name}": name => "${package_prefix}${name}" }
    }
  }

  #---

  if ! empty($extra_packages) {
    package { "php-extra-${name}":
      name    => $extra_packages,
      ensure  => $extra_ensure,
      require => Package["php-${name}"],
    }
  }

  #-----------------------------------------------------------------------------
  # Configuration

  if $content != undef {
    php::conf { $name:
      conf_dir => $conf_dir,
      content  => $content ? {
        ''       => "extension=${package_prefix}${name}.so",
        default  => $content,
      },
    }
  }
}
