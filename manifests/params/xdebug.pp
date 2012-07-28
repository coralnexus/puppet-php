
class php::params::xdebug inherits php::params {

  #-----------------------------------------------------------------------------
  # General configurations

  if $::hiera_ready {
    $xdebug_ensure                  = hiera('php_xdebug_ensure', $php::default::xdebug_ensure)
    $xdebug_remote_enable           = hiera('php_xdebug_remote_enable', $php::default::xdebug_remote_enable)
    $xdebug_remote_handler          = hiera('php_xdebug_remote_handler', $php::default::xdebug_remote_handler)
    $xdebug_remote_mode             = hiera('php_xdebug_remote_mode', $php::default::xdebug_remote_mode)
    $xdebug_remote_connect_back     = hiera('php_xdebug_remote_connect_back', $php::default::xdebug_remote_connect_back)
    $xdebug_remote_port             = hiera('php_xdebug_remote_port', $php::default::xdebug_remote_port)
    $xdebug_max_nesting_level       = hiera('php_xdebug_max_nesting_level', $php::default::xdebug_max_nesting_level)
    $xdebug_profiler_enable         = hiera('php_xdebug_profiler_enable', $php::default::xdebug_profiler_enable)
    $xdebug_profiler_enable_trigger = hiera('php_xdebug_profiler_enable_trigger', $php::default::xdebug_profiler_enable_trigger)
    $xdebug_profiler_output_name    = hiera('php_xdebug_profiler_output_name', $php::default::xdebug_profiler_output_name)
    $xdebug_profiler_append         = hiera('php_xdebug_profiler_append', $php::default::xdebug_profiler_append)
    $xdebug_auto_trace              = hiera('php_xdebug_auto_trace', $php::default::xdebug_auto_trace)
    $xdebug_trace_output_name       = hiera('php_xdebug_trace_output_name', $php::default::xdebug_trace_output_name)
  }
  else {
    $xdebug_ensure                  = $php::default::xdebug_ensure
    $xdebug_remote_enable           = $php::default::xdebug_remote_enable
    $xdebug_remote_handler          = $php::default::xdebug_remote_handler
    $xdebug_remote_mode             = $php::default::xdebug_remote_mode
    $xdebug_remote_connect_back     = $php::default::xdebug_remote_connect_back
    $xdebug_remote_port             = $php::default::xdebug_remote_port
    $xdebug_max_nesting_level       = $php::default::xdebug_max_nesting_level
    $xdebug_profiler_enable         = $php::default::xdebug_profiler_enable
    $xdebug_profiler_enable_trigger = $php::default::xdebug_profiler_enable_trigger
    $xdebug_profiler_output_name    = $php::default::xdebug_profiler_output_name
    $xdebug_profiler_append         = $php::default::xdebug_profiler_append
    $xdebug_auto_trace              = $php::default::xdebug_auto_trace
    $xdebug_trace_output_name       = $php::default::xdebug_trace_output_name
  }

  #-----------------------------------------------------------------------------
  # Operating system specific configurations

  case $::operatingsystem {
    debian, ubuntu: {
      $os_zend_extension             = '/usr/lib/php5/20090626/xdebug.so'

      $os_xdebug_template            = 'php/xdebug.ini.erb'

      $os_xdebug_profiler_output_dir = '/var/log/profiles'
      $os_xdebug_trace_output_dir    = '/var/log/traces'
    }
    default: {
      fail("The php module is not currently supported on ${::operatingsystem}")
    }
  }
}
