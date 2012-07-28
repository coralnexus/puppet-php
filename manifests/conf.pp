
define php::conf (

  $ensure   = 'present',
  $content  = '',
  $conf_dir = $php::params::os_conf_dir,
  $require  = undef,
  $notify   = undef,

) {

  include php

  #-----------------------------------------------------------------------------

  if $content {
    file { "php-conf-${name}":
      path    => "${conf_dir}/${name}.ini",
      ensure  => $ensure,
      content => $content,
      require => $require ? {
        undef   => File['php-conf-dir'],
        default => flatten([ File['php-conf-dir'], $require ]),
      },
      notify  => $notify,
    }
  }
}
