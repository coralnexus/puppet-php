
class php::params::apc inherits php::params {

  $packages                   = module_param('apc_packages')
  $ensure                     = module_param('apc_ensure')
  $template                   = module_param('apc_template')

  #---

  $apc_enabled                = module_param('apc_enabled')
  $apc_mmap_file_mask         = module_param('apc_mmap_file_mask')
  $apc_shm_segments           = module_param('apc_shm_segments')
  $apc_shm_size               = module_param('apc_shm_size')
  $apc_num_files_hint         = module_param('apc_num_files_hint')
  $apc_user_entries_hint      = module_param('apc_user_entries_hint')
  $apc_ttl                    = module_param('apc_ttl')
  $apc_use_request_time       = module_param('apc_use_request_time')
  $apc_user_ttl               = module_param('apc_user_ttl')
  $apc_gc_ttl                 = module_param('apc_gc_ttl')
  $apc_cache_by_default       = module_param('apc_cache_by_default')
  $apc_filters                = module_param('apc_filters')
  $apc_file_update_protection = module_param('apc_file_update_protection')
  $apc_enable_cli             = module_param('apc_enable_cli')
  $apc_max_file_size          = module_param('apc_max_file_size')
  $apc_stat                   = module_param('apc_stat')
  $apc_stat_ctime             = module_param('apc_stat_ctime')
  $apc_canonicalize           = module_param('apc_canonicalize')
  $apc_write_lock             = module_param('apc_write_lock')
  $apc_report_autofilter      = module_param('apc_report_autofilter')
  $apc_rfc1867                = module_param('apc_rfc1867')
  $apc_rfc1867_prefix         = module_param('apc_rfc1867_prefix')
  $apc_rfc1867_name           = module_param('apc_rfc1867_name')
  $apc_rfc1867_freq           = module_param('apc_rfc1867_freq')
  $apc_rfc1867_ttl            = module_param('apc_rfc1867_ttl')
  $apc_include_once_override  = module_param('apc_include_once_override')
  $apc_lazy_classes           = module_param('apc_lazy_classes')
  $apc_lazy_functions         = module_param('apc_lazy_functions')
}
