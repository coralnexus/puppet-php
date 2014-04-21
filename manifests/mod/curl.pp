class php::mod::curl (

  $package  = $php::params::curl_package,
  $ensure   = $php::params::module_ensure,
  $conf_dir = $php::params::conf_dir

) inherits php::params {

  #-----------------------------------------------------------------------------

  php::module { $package:
    config_name  => 'curl',
    ensure       => $ensure,
    conf_dir     => $conf_dir,
    content      => ''
  }
}
