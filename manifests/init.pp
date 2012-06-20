
class php (

  $use_apc              = $php::params::use_apc,
  $use_xdebug           = $php::params::use_xdebug,
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
    use_apc         => $use_apc,
    use_xdebug      => $use_xdebug,
    cli_ini_source  => $cli_ini_source,
    cli_ini_content => $cli_ini_content,
  }

  #-----------------------------------------------------------------------------

  Class['php::install'] -> Class['php::config']
}
