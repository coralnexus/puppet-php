
class php::mod::xmlrpc (

  $package  = $php::params::os_xmlrpc_package,
  $ensure   = $php::params::module_ensure,
  $conf_dir = $php::params::os_conf_dir,

) inherits php::params {

  #-----------------------------------------------------------------------------

  php::module { $package:
    ensure   => $ensure,
    conf_dir => $conf_dir,
  }
}
