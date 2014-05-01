
define php::conf (

  $ensure        = 'present',
  $content       = '',
  $conf_dir      = $php::params::conf_dir,
  $service       = $php::params::service,
  $update_notify = undef

) {

  #-----------------------------------------------------------------------------

  if $service and defined(Service[$service]) {
    if $update_notify {
      $notifications = [ Service[$service], $update_notify ]
    }
    else {
      $notifications = Service[$service]
    }
  }
  else {
    $notifications = $update_notify
  }

  #---

  if $content {
    file { "php-conf-${name}":
      path    => "${conf_dir}/${name}.ini",
      ensure  => $ensure,
      content => $content,
      require => File['php-conf-dir'],
      notify  => $notifications
    }
  }
}
