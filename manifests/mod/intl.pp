
class php::mod::intl (

  $package  = $php::params::intl_package,
  $ensure   = $php::params::module_ensure,
  $conf_dir = $php::params::conf_dir,

) inherits php::params {

  #-----------------------------------------------------------------------------

  php::module { $package:
    config_name => 'intl',
    ensure      => $ensure,
    conf_dir    => $conf_dir
  }
}