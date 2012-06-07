
class php::apache2::install (

  $apache_package_version = $php::params::apache_package_version,

) inherits php::params {

  #-----------------------------------------------------------------------------

  package { $php::params::apache_package_name:
    ensure  => $apache_package_version,
    notify  => Service[$php::params::apache_service_name],
  }
}
