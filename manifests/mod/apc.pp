
class php::mod::apc (

  $ensure                     = $php::params::apc::ensure,
  $packages                   = $php::params::apc::packages,
  $conf_dir                   = $php::params::conf_dir,
  $template                   = $php::params::apc::template,
  $apc_enabled                = $php::params::apc::apc_enabled,
  $apc_shm_segments           = $php::params::apc::apc_shm_segments,
  $apc_shm_size               = $php::params::apc::apc_shm_size,
  $apc_num_files_hint         = $php::params::apc::apc_num_files_hint,
  $apc_user_entries_hint      = $php::params::apc::apc_user_entries_hint,
  $apc_ttl                    = $php::params::apc::apc_ttl,
  $apc_use_request_time       = $php::params::apc::apc_use_request_time,
  $apc_user_ttl               = $php::params::apc::apc_user_ttl,
  $apc_gc_ttl                 = $php::params::apc::apc_gc_ttl,
  $apc_cache_by_default       = $php::params::apc::apc_cache_by_default,
  $apc_filters                = $php::params::apc::apc_filters,
  $apc_mmap_file_mask         = $php::params::apc::apc_mmap_file_mask,
  $apc_file_update_protection = $php::params::apc::apc_file_update_protection,
  $apc_enable_cli             = $php::params::apc::apc_enable_cli,
  $apc_max_file_size          = $php::params::apc::apc_max_file_size,
  $apc_stat                   = $php::params::apc::apc_stat,
  $apc_stat_ctime             = $php::params::apc::apc_stat_ctime,
  $apc_canonicalize           = $php::params::apc::apc_canonicalize,
  $apc_write_lock             = $php::params::apc::apc_write_lock,
  $apc_report_autofilter      = $php::params::apc::apc_report_autofilter,
  $apc_rfc1867                = $php::params::apc::apc_rfc1867,
  $apc_rfc1867_prefix         = $php::params::apc::apc_rfc1867_prefix,
  $apc_rfc1867_name           = $php::params::apc::apc_rfc1867_name,
  $apc_rfc1867_freq           = $php::params::apc::apc_rfc1867_freq,
  $apc_rfc1867_ttl            = $php::params::apc::apc_rfc1867_ttl,
  $apc_include_once_override  = $php::params::apc::apc_include_once_override,
  $apc_lazy_classes           = $php::params::apc::apc_lazy_classes,
  $apc_lazy_functions         = $php::params::apc::apc_lazy_functions,

) inherits php::params::apc {

  #-----------------------------------------------------------------------------

  php::module { 'apc':
    ensure         => $ensure,
    provider       => 'pecl',
    extra_packages => $packages,
    extra_ensure   => $ensure,
    conf_dir       => $conf_dir,
    content        => template($template),
  }
}
