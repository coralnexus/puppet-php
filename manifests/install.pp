
class php::install (

  $cli_package_version  = $php::params::cli_package_version,
  $pear_package_version = $php::params::pear_package_version,

) inherits php::params {

  #-----------------------------------------------------------------------------

  package { $php::params::cli_package_name:
    ensure => $cli_package_version,
  }

  package { $php::params::pear_package_name:
    ensure  => $pear_package_version,
    require => Package[$php::params::cli_package_name],
  }

  #-----------------------------------------------------------------------------

  exec { "php-pear-update":
    command => "/usr/bin/pear update-channels",
    require => Package[$php::params::pear_package_name]
  }
}
