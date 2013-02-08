
class php::mod::xdebug (

  $ensure                         = $php::params::xdebug::ensure,
  $conf_dir                       = $php::params::conf_dir,
  $template                       = $php::params::xdebug::template,
  $zend_extension                 = $php::params::xdebug::zend_extension,
  $xdebug_remote_enable           = $php::params::xdebug::xdebug_remote_enable,
  $xdebug_remote_handler          = $php::params::xdebug::xdebug_remote_handler,
  $xdebug_remote_mode             = $php::params::xdebug::xdebug_remote_mode,
  $xdebug_remote_connect_back     = $php::params::xdebug::xdebug_remote_connect_back,
  $xdebug_remote_port             = $php::params::xdebug::xdebug_remote_port,
  $xdebug_max_nesting_level       = $php::params::xdebug::xdebug_max_nesting_level,
  $xdebug_profiler_enable         = $php::params::xdebug::xdebug_profiler_enable,
  $xdebug_profiler_enable_trigger = $php::params::xdebug::xdebug_profiler_enable_trigger,
  $xdebug_profiler_output_dir     = $php::params::xdebug::xdebug_profiler_output_dir,
  $xdebug_profiler_output_name    = $php::params::xdebug::xdebug_profiler_output_name,
  $xdebug_profiler_append         = $php::params::xdebug::xdebug_profiler_append,
  $xdebug_auto_trace              = $php::params::xdebug::xdebug_auto_trace,
  $xdebug_trace_output_dir        = $php::params::xdebug::xdebug_trace_output_dir,
  $xdebug_trace_output_name       = $php::params::xdebug::xdebug_trace_output_name

) inherits php::params::xdebug {

  #-----------------------------------------------------------------------------

  php::module { 'xdebug':
    ensure   => $ensure,
    provider => 'pecl',
    conf_dir => $conf_dir,
    content  => template($template),
  }
}
