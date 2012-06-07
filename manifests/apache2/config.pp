
class php::apache2::config (

  $apache2_ini_source  = $php::params::apache2_ini_source,
  $apache2_ini_content = $php::params::apache2_ini_content,

) inherits php::params {

  #-----------------------------------------------------------------------------

  file { $php::params::apache_dir:
    owner   => root,
    group   => root,
    purge   => true,
    recurse => true,
    force   => true,
    require => Class['php::apache2::install'],
    notify  => Service[$php::params::apache_service_name],
    ensure  => directory,
  }

  file { "${php::params::apache_dir}conf.d":
    ensure  => "../conf.d",
    require => File[$php::params::apache_dir],
    notify  => Service[$php::params::apache_service_name],
  }

  if $apache2_ini_source != undef {
    $apache2_ini_content = undef
  }

  file { $php::params::apache_ini:
    owner   => root,
    group   => root,
    require => Class['php::apache2::install'],
    notify  => Service[$php::params::apache_service_name],
    content => $apache2_ini_content,
    source  => $apache2_ini_source,
    ensure  => file,
  }
}
