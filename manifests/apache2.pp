
class php::apache2(

  $apache_package_version = $php::params::apache_package_version,
  $apache2_ini_content    = $php::params::apache2_ini_content,
  $apache2_ini_source     = $php::params::apache2_ini_source,

) inherits php::params {

  #-----------------------------------------------------------------------------

  class { 'php::apache2::install':
    apache_package_version => $apache_package_version,
  }

  class { 'php::apache2::config':
    apache2_ini_content => $apache2_ini_content,
    apache2_ini_source  => $apache2_ini_source,
  }

  #-----------------------------------------------------------------------------

  Class["php::config"] -> Service["apache"]
}
