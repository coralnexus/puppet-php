
class php::mod::mysql (

  $package                           = $php::params::mysql::os_mysql_package,
  $ensure                            = $php::params::mysql::mysql_ensure,
  $conf_dir                          = $php::params::os_conf_dir,
  $module_configs                    = $php::params::mysql::os_module_configs,
  $sql_safe_mode                     = $php::params::mysql::sql_safe_mode,
  $mysqlnd_collect_statistics        = $php::params::mysql::mysqlnd_collect_statistics,
  $mysqlnd_collect_memory_statistics = $php::params::mysql::mysqlnd_collect_memory_statistics,
  $mysqlnd_net_cmd_buffer_size       = $php::params::mysql::mysqlnd_net_cmd_buffer_size,
  $mysqlnd_net_read_buffer_size      = $php::params::mysql::mysqlnd_net_read_buffer_size,
  $mysql_allow_local_infile          = $php::params::mysql::mysql_allow_local_infile,
  $mysql_allow_persistent            = $php::params::mysql::mysql_allow_persistent,
  $mysql_cache_size                  = $php::params::mysql::mysql_cache_size,
  $mysql_max_persistent              = $php::params::mysql::mysql_max_persistent,
  $mysql_max_links                   = $php::params::mysql::mysql_max_links,
  $mysql_default_port                = $php::params::mysql::mysql_default_port,
  $mysql_default_socket              = $php::params::mysql::mysql_default_socket,
  $mysql_default_host                = $php::params::mysql::mysql_default_host,
  $mysql_default_user                = $php::params::mysql::mysql_default_user,
  $mysql_default_password            = $php::params::mysql::mysql_default_password,
  $mysql_connect_timeout             = $php::params::mysql::mysql_connect_timeout,
  $mysql_trace_mode                  = $php::params::mysql::mysql_trace_mode,
  $mysqli_max_persistent             = $php::params::mysql::mysqli_max_persistent,
  $mysqli_allow_local_infile         = $php::params::mysql::mysqli_allow_local_infile,
  $mysqli_allow_persistent           = $php::params::mysql::mysqli_allow_persistent,
  $mysqli_max_links                  = $php::params::mysql::mysqli_max_links,
  $mysqli_cache_size                 = $php::params::mysql::mysqli_cache_size,
  $mysqli_default_port               = $php::params::mysql::mysqli_default_port,
  $mysqli_default_socket             = $php::params::mysql::mysqli_default_socket,
  $mysqli_default_host               = $php::params::mysql::mysqli_default_host,
  $mysqli_default_user               = $php::params::mysql::mysqli_default_user,
  $mysqli_default_pw                 = $php::params::mysql::mysqli_default_pw,
  $mysqli_reconnect                  = $php::params::mysql::mysqli_reconnect,
  $pdo_mysql_cache_size              = $php::params::mysql::pdo_mysql_cache_size,
  $pdo_mysql_default_socket          = $php::params::mysql::pdo_mysql_default_socket,
  $template                          = $php::params::mysql::os_mysql_template,

) inherits php::params::mysql {

  #-----------------------------------------------------------------------------

  php::module { $package:
    ensure   => $ensure,
    conf_dir => $conf_dir,
    content  => template($template),
  }

  php::module { $module_configs:
    ensure   => undef,
    conf_dir => $conf_dir,
    require  => Php::Module[$package],
  }
}
