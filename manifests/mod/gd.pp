
class php::mod::gd (

  $package  = $php::params::gd_package,
  $ensure   = $php::params::module_ensure,
  $conf_dir = $php::params::conf_dir,

) inherits php::params {

  #-----------------------------------------------------------------------------

  php::module { $package:
    ensure   => $ensure,
    conf_dir => $conf_dir,
  }
}
