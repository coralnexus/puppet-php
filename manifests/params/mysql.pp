
class php::params::mysql inherits php::params {

  #-----------------------------------------------------------------------------
  # General configurations

  if $::hiera_ready {
    $mysql_ensure                      = hiera('php_mysql_ensure', $php::default::mysql_ensure)
    $sql_safe_mode                     = hiera('php_sql_safe_mode', $php::default::sql_safe_mode)
    $mysqlnd_collect_statistics        = hiera('php_mysqlnd_collect_statistics', $php::default::mysqlnd_collect_statistics)
    $mysqlnd_collect_memory_statistics = hiera('php_mysqlnd_collect_memory_statistics', $php::default::mysqlnd_collect_memory_statistics)
    $mysqlnd_net_cmd_buffer_size       = hiera('php_mysqlnd_net_cmd_buffer_size', $php::default::mysqlnd_net_cmd_buffer_size)
    $mysqlnd_net_read_buffer_size      = hiera('php_mysqlnd_net_read_buffer_size', $php::default::mysqlnd_net_read_buffer_size)
    $mysql_allow_local_infile          = hiera('php_mysql_allow_local_infile', $php::default::mysql_allow_local_infile)
    $mysql_allow_persistent            = hiera('php_mysql_allow_persistent', $php::default::mysql_allow_persistent)
    $mysql_cache_size                  = hiera('php_mysql_cache_size', $php::default::mysql_cache_size)
    $mysql_max_persistent              = hiera('php_mysql_max_persistent', $php::default::mysql_max_persistent)
    $mysql_max_links                   = hiera('php_mysql_max_links', $php::default::mysql_max_links)
    $mysql_default_port                = hiera('php_mysql_default_port', $php::default::mysql_default_port)
    $mysql_default_socket              = hiera('php_mysql_default_socket', $php::default::mysql_default_socket)
    $mysql_default_host                = hiera('php_mysql_default_host', $php::default::mysql_default_host)
    $mysql_default_user                = hiera('php_mysql_default_user', $php::default::mysql_default_user)
    $mysql_default_password            = hiera('php_mysql_default_password', $php::default::mysql_default_password)
    $mysql_connect_timeout             = hiera('php_mysql_connect_timeout', $php::default::mysql_connect_timeout)
    $mysql_trace_mode                  = hiera('php_mysql_trace_mode', $php::default::mysql_trace_mode)
    $mysqli_max_persistent             = hiera('php_mysqli_max_persistent', $php::default::mysqli_max_persistent)
    $mysqli_allow_local_infile         = hiera('php_mysqli_allow_local_infile', $php::default::mysqli_allow_local_infile)
    $mysqli_allow_persistent           = hiera('php_mysqli_allow_persistent', $php::default::mysqli_allow_persistent)
    $mysqli_max_links                  = hiera('php_mysqli_max_links', $php::default::mysqli_max_links)
    $mysqli_cache_size                 = hiera('php_mysqli_cache_size', $php::default::mysqli_cache_size)
    $mysqli_default_port               = hiera('php_mysqli_default_port', $php::default::mysqli_default_port)
    $mysqli_default_socket             = hiera('php_mysqli_default_socket', $php::default::mysqli_default_socket)
    $mysqli_default_host               = hiera('php_mysqli_default_host', $php::default::mysqli_default_host)
    $mysqli_default_user               = hiera('php_mysqli_default_user', $php::default::mysqli_default_user)
    $mysqli_default_pw                 = hiera('php_mysqli_default_pw', $php::default::mysqli_default_pw)
    $mysqli_reconnect                  = hiera('php_mysqli_reconnect', $php::default::mysqli_reconnect)
    $pdo_mysql_cache_size              = hiera('php_pdo_mysql_cache_size', $php::default::pdo_mysql_cache_size)
    $pdo_mysql_default_socket          = hiera('php_pdo_mysql_default_socket', $php::default::pdo_mysql_default_socket)
  }
  else {
    $mysql_ensure                      = $php::default::mysql_ensure
    $sql_safe_mode                     = $php::default::sql_safe_mode
    $mysqlnd_collect_statistics        = $php::default::mysqlnd_collect_statistics
    $mysqlnd_collect_memory_statistics = $php::default::mysqlnd_collect_memory_statistics
    $mysqlnd_net_cmd_buffer_size       = $php::default::mysqlnd_net_cmd_buffer_size
    $mysqlnd_net_read_buffer_size      = $php::default::mysqlnd_net_read_buffer_size
    $mysql_allow_local_infile          = $php::default::mysql_allow_local_infile
    $mysql_allow_persistent            = $php::default::mysql_allow_persistent
    $mysql_cache_size                  = $php::default::mysql_cache_size
    $mysql_max_persistent              = $php::default::mysql_max_persistent
    $mysql_max_links                   = $php::default::mysql_max_links
    $mysql_default_port                = $php::default::mysql_default_port
    $mysql_default_socket              = $php::default::mysql_default_socket
    $mysql_default_host                = $php::default::mysql_default_host
    $mysql_default_user                = $php::default::mysql_default_user
    $mysql_default_password            = $php::default::mysql_default_password
    $mysql_connect_timeout             = $php::default::mysql_connect_timeout
    $mysql_trace_mode                  = $php::default::mysql_trace_mode
    $mysqli_max_persistent             = $php::default::mysqli_max_persistent
    $mysqli_allow_local_infile         = $php::default::mysqli_allow_local_infile
    $mysqli_allow_persistent           = $php::default::mysqli_allow_persistent
    $mysqli_max_links                  = $php::default::mysqli_max_links
    $mysqli_cache_size                 = $php::default::mysqli_cache_size
    $mysqli_default_port               = $php::default::mysqli_default_port
    $mysqli_default_socket             = $php::default::mysqli_default_socket
    $mysqli_default_host               = $php::default::mysqli_default_host
    $mysqli_default_user               = $php::default::mysqli_default_user
    $mysqli_default_pw                 = $php::default::mysqli_default_pw
    $mysqli_reconnect                  = $php::default::mysqli_reconnect
    $pdo_mysql_cache_size              = $php::default::pdo_mysql_cache_size
    $pdo_mysql_default_socket          = $php::default::pdo_mysql_default_socket
  }

  #-----------------------------------------------------------------------------
  # Operating system specific configurations

  case $::operatingsystem {
    debian, ubuntu: {
      $os_mysql_package  = 'php5-mysql'
      $os_module_configs = [ 'mysql', 'mysqli', 'pdo', 'pdo_mysql' ]

      $os_mysql_template = 'php/mysql.ini.erb'
    }
    default: {
      fail("The php module is not currently supported on ${::operatingsystem}")
    }
  }
}
