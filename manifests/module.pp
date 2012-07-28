
define php::module (

  $ensure         = 'present',
  $package_prefix = '',
  $extra_packages = '',
  $extra_ensure   = 'present',
  $content        = '',
  $provider       = undef,
  $conf_dir       = $php::params::os_conf_dir,
  $require        = undef,
  $notify         = undef,

) {

  include php

  #-----------------------------------------------------------------------------
  # Installation

  if $ensure != undef {
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

  if $extra_packages {
    package { "php-extra-${name}":
      name    => $extra_packages,
      ensure  => $extra_ensure,
      require => Package["php-${name}"],
    }
  }

  #-----------------------------------------------------------------------------
  # Configuration

  if $content != undef {
    php::conf { "php-module-${name}":
      conf_dir => $conf_dir,
      content  => $content ? {
        ''       => "extension=${package_prefix}${name}.so",
        default  => $content,
      },
      notify   => $notify,
    }
  }
}
