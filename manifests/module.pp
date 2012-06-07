
define php::module (

  $ensure         = 'present',
  $provider       = '',
  $source         = undef,
  $content        = undef,
  $require        = undef,
  $notify         = undef,
  $package_prefix = '',

) {

  #-----------------------------------------------------------------------------

  include php
  include php::params
  include php::install

  $file_name = "${name}.ini"

  if $require {
    $real_require = [ Class['php::install'], $require, ]
  } else {
    $real_require = Class['php::install']
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

    if $provider == 'pecl' {
      $include_statement = "extension=${package_prefix}${name}.so"
    }
  }
  else {
    package { "php-${name}": name => "${package_prefix}${name}", }
  }

  #-----------------------------------------------------------------------------

  file { $file_name:
    path    => "${php::params::conf_dir}${file_name}",
    mode    => 644,
    owner   => root,
    group   => root,
    ensure  => $ensure,
    notify  => $notify,
    source  => $source ? {
      undef => undef,
      true  => [
        "puppet:///files/${fqdn}/etc/php5/conf.d/${file_name}",
        "puppet:///files/${hostgroup}/etc/php5/conf.d/${file_name}",
        "puppet:///files/${domain}/etc/php5/conf.d/${file_name}",
        "puppet:///files/global/etc/php5/conf.d/${file_name}",
      ],
      default => "${source}${file_name}",
    },
    content => $source ? {
      undef   => $content ? {
        undef   => $include_statement,
        default => template("${content}"),
      },
      default => undef,
    },
    require => Package["php-${name}"],
  }
}
