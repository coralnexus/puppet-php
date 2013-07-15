
define php::conf (

  $ensure   = 'present',
  $content  = '',
  $conf_dir = $php::params::conf_dir,
  $service  = $php::params::apache::service

) {

  if defined(Service[$service]) {
    Package {
      notify => Service[$service],
    }
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
