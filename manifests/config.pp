
class php::config (

  $cli_ini_source  = $php::params::cli_ini_source,
  $cli_ini_content = $php::params::cli_ini_content,

) inherits php::params {

  #-----------------------------------------------------------------------------

  file { $php::params::extra_dir:
    owner   => root,
    group   => root,
    purge   => true,
    recurse => true,
    force   => true,
    require => Class["php::install"],
    ensure  => directory,
  }

  file { $php::params::conf_dir:
    owner   => root,
    group   => root,
    purge   => true,
    recurse => true,
    force   => true,
    require => Class["php::install"],
    ensure  => directory,
  }

  if $cli_ini_source != undef {
    $cli_ini_content = undef
  }

  file { $php::params::cli_ini:
    owner   => root,
    group   => root,
    require => Class["php::install"],
    ensure  => file,
    content => $cli_ini_content,
    source  => $cli_ini_source,
  }

  file { $php::params::cli_dir:
    owner   => root,
    group   => root,
    purge   => true,
    recurse => true,
    force   => true,
    require => Class["php::install"],
    ensure  => directory,
  }

  file { "${php::params::cli_dir}conf.d":
    ensure => "../conf.d",
  }
}
