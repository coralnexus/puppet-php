
define php::conf (

  $ensure   = 'present',
  $content  = '',
  $conf_dir = $php::params::conf_dir,
  $service  = $php::params::service

) {

  if $service and defined(Service[$service]) {
    File {
      notify => Service[$service],
    }
  }
  
  #-----------------------------------------------------------------------------

  if $content {
    file { "php-conf-${name}":
      path    => "${conf_dir}/${name}.ini",
      ensure  => $ensure,
      content => $content,
      require => File['php-conf-dir']
    }
  }
}
