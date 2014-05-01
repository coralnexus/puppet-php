class php::mod::uploadprogress (

  $ensure   = $php::params::module_ensure,
  $conf_dir = $php::params::conf_dir,

) inherits php::params {

  #-----------------------------------------------------------------------------

  php::module { 'uploadprogress':
    ensure   => $ensure,
    provider => 'pecl',
    conf_dir => $conf_dir
  }
}
