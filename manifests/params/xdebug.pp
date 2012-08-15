
class php::params::xdebug inherits php::params {

  $ensure                         = module_param('xdebug_ensure')
  $zend_extension                 = module_param('xdebug_zend_extension')
  $template                       = module_param('xdebug_template')

  #---

  $xdebug_max_nesting_level       = module_param('xdebug_max_nesting_level')

  $xdebug_remote_enable           = module_param('xdebug_remote_enable')
  $xdebug_remote_handler          = module_param('xdebug_remote_handler')
  $xdebug_remote_mode             = module_param('xdebug_remote_mode')
  $xdebug_remote_connect_back     = module_param('xdebug_remote_connect_back')
  $xdebug_remote_port             = module_param('xdebug_remote_port')

  $xdebug_profiler_enable         = module_param('xdebug_profiler_enable')
  $xdebug_profiler_enable_trigger = module_param('xdebug_profiler_enable_trigger')
  $xdebug_profiler_output_dir     = module_param('xdebug_profiler_output_dir')
  $xdebug_profiler_output_name    = module_param('xdebug_profiler_output_name')
  $xdebug_profiler_append         = module_param('xdebug_profiler_append')

  $xdebug_auto_trace              = module_param('xdebug_auto_trace')
  $xdebug_trace_output_dir        = module_param('xdebug_trace_output_dir')
  $xdebug_trace_output_name       = module_param('xdebug_trace_output_name')
}
