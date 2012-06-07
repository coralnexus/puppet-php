
class php (

  $cli_package_version  = $php::params::cli_package_version,
  $cli_ini_source       = $php::params::cli_ini_source,
  $cli_ini_content      = $php::params::cli_ini_content,
  $pear_package_version = $php::params::pear_package_version,

) inherits php::params {

  #-----------------------------------------------------------------------------

  class { 'php::install':
    cli_package_version  => $cli_package_version,
    pear_package_version => $pear_package_version,
  }

  class { 'php::config':
    cli_ini_source  => $cli_ini_source,
    cli_ini_content => $cli_ini_content,
  }

  #-----------------------------------------------------------------------------

  Class['php::install'] -> Class['php::config']
}
