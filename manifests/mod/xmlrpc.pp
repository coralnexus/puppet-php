
class php::mod::xmlrpc (

  $package  = $php::params::xmlrpc_package,
  $ensure   = $php::params::module_ensure,
  $conf_dir = $php::params::conf_dir

) inherits php::params {

  #-----------------------------------------------------------------------------

  php::module { $package:
    config_name  => 'xmlrpc',
    ensure       => $ensure,
    conf_dir     => $conf_dir,
  }
}
