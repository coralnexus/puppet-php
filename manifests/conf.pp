
define php::conf (

  $ensure   = 'present',
  $content  = '',
  $conf_dir = $php::params::conf_dir,
  $require  = undef,

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
    }
  }
}
