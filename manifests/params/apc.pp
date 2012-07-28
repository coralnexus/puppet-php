
class php::params::apc inherits php::params {

  #-----------------------------------------------------------------------------
  # General configurations

  if $::hiera_ready {
    $apc_ensure                 = hiera('php_apc_ensure', $php::default::apc_ensure)
    $apc_enabled                = hiera('php_apc_enabled', $php::default::apc_enabled)
    $apc_shm_segments           = hiera('php_apc_shm_segments', $php::default::apc_shm_segments)
    $apc_shm_size               = hiera('php_apc_shm_size', $php::default::apc_shm_size)
    $apc_num_files_hint         = hiera('php_apc_num_files_hint', $php::default::apc_num_files_hint)
    $apc_user_entries_hint      = hiera('php_apc_user_entries_hint', $php::default::apc_user_entries_hint)
    $apc_ttl                    = hiera('php_apc_ttl', $php::default::apc_ttl)
    $apc_use_request_time       = hiera('php_apc_use_request_time', $php::default::apc_use_request_time)
    $apc_user_ttl               = hiera('php_apc_user_ttl', $php::default::apc_user_ttl)
    $apc_gc_ttl                 = hiera('php_apc_gc_ttl', $php::default::apc_gc_ttl)
    $apc_cache_by_default       = hiera('php_apc_cache_by_default', $php::default::apc_cache_by_default)
    $apc_filters                = hiera('php_apc_filters', $php::default::apc_filters)
    $apc_file_update_protection = hiera('php_apc_file_update_protection', $php::default::apc_file_update_protection)
    $apc_enable_cli             = hiera('php_apc_enable_cli', $php::default::apc_enable_cli)
    $apc_max_file_size          = hiera('php_apc_max_file_size', $php::default::apc_max_file_size)
    $apc_stat                   = hiera('php_apc_stat', $php::default::apc_stat)
    $apc_stat_ctime             = hiera('php_apc_stat_ctime', $php::default::apc_stat_ctime)
    $apc_canonicalize           = hiera('php_apc_canonicalize', $php::default::apc_canonicalize)
    $apc_write_lock             = hiera('php_apc_write_lock', $php::default::apc_write_lock)
    $apc_report_autofilter      = hiera('php_apc_report_autofilter', $php::default::apc_report_autofilter)
    $apc_rfc1867                = hiera('php_apc_rfc1867', $php::default::apc_rfc1867)
    $apc_rfc1867_prefix         = hiera('php_apc_rfc1867_prefix', $php::default::apc_rfc1867_prefix)
    $apc_rfc1867_name           = hiera('php_apc_rfc1867_name', $php::default::apc_rfc1867_name)
    $apc_rfc1867_freq           = hiera('php_apc_rfc1867_freq', $php::default::apc_rfc1867_freq)
    $apc_rfc1867_ttl            = hiera('php_apc_rfc1867_ttl', $php::default::apc_rfc1867_ttl)
    $apc_include_once_override  = hiera('php_apc_include_once_override', $php::default::apc_include_once_override)
    $apc_lazy_classes           = hiera('php_apc_lazy_classes', $php::default::apc_lazy_classes)
    $apc_lazy_functions         = hiera('php_apc_lazy_functions', $php::default::apc_lazy_functions)
  }
  else {
    $apc_ensure                 = $php::default::apc_ensure
    $apc_enabled                = $php::default::apc_enabled
    $apc_shm_segments           = $php::default::apc_shm_segments
    $apc_shm_size               = $php::default::apc_shm_size
    $apc_num_files_hint         = $php::default::apc_num_files_hint
    $apc_user_entries_hint      = $php::default::apc_user_entries_hint
    $apc_ttl                    = $php::default::apc_ttl
    $apc_use_request_time       = $php::default::apc_use_request_time
    $apc_user_ttl               = $php::default::apc_user_ttl
    $apc_gc_ttl                 = $php::default::apc_gc_ttl
    $apc_cache_by_default       = $php::default::apc_cache_by_default
    $apc_filters                = $php::default::apc_filters
    $apc_file_update_protection = $php::default::apc_file_update_protection
    $apc_enable_cli             = $php::default::apc_enable_cli
    $apc_max_file_size          = $php::default::apc_max_file_size
    $apc_stat                   = $php::default::apc_stat
    $apc_stat_ctime             = $php::default::apc_stat_ctime
    $apc_canonicalize           = $php::default::apc_canonicalize
    $apc_write_lock             = $php::default::apc_write_lock
    $apc_report_autofilter      = $php::default::apc_report_autofilter
    $apc_rfc1867                = $php::default::apc_rfc1867
    $apc_rfc1867_prefix         = $php::default::apc_rfc1867_prefix
    $apc_rfc1867_name           = $php::default::apc_rfc1867_name
    $apc_rfc1867_freq           = $php::default::apc_rfc1867_freq
    $apc_rfc1867_ttl            = $php::default::apc_rfc1867_ttl
    $apc_include_once_override  = $php::default::apc_include_once_override
    $apc_lazy_classes           = $php::default::apc_lazy_classes
    $apc_lazy_functions         = $php::default::apc_lazy_functions
  }

  #-----------------------------------------------------------------------------
  # Operating system specific configurations

  case $::operatingsystem {
    debian, ubuntu: {
      $os_apc_packages       = [ 'libpcre3-dev' ]

      $os_apc_template       = 'php/apc.ini.erb'

      $os_apc_mmap_file_mask = '/tmp/apc.XXXXXX'
    }
    default: {
      fail("The php module is not currently supported on ${::operatingsystem}")
    }
  }
}
