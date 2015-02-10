
class php::mod::imagick (

  $package  = $php::params::imagick_package,
  $ensure   = $php::params::module_ensure,
  $conf_dir = $php::params::conf_dir,

) inherits php::params {

  #-----------------------------------------------------------------------------

  php::module { $package:
    config_name => 'imagick',
    ensure      => $ensure,
    conf_dir    => $conf_dir
  }
}