
class php (

  $cli_package                        = $php::params::cli_package,
  $cli_ensure                         = $php::params::cli_ensure,
  $extra_packages                     = $php::params::extra_packages,
  $extra_ensure                       = $php::params::extra_ensure,
  $pear_package                       = $php::params::pear_package,
  $pear_ensure                        = $php::params::pear_ensure,
  $module_ensure                      = $php::params::module_ensure,
  $module_packages                    = $php::params::module_packages,
  $pear_module_packages               = $php::params::pear_module_packages,
  $pecl_module_packages               = $php::params::pecl_module_packages,
  $conf_dir                           = $php::params::conf_dir,
  $cli_dir                            = $php::params::cli_dir,
  $cli_ini                            = $php::params::cli_ini,
  $cli_ini_template                   = $php::params::cli_ini_template,
  $user_ini_filename                  = $php::params::user_ini_filename,
  $user_ini_cache_ttl                 = $php::params::user_ini_cache_ttl,
  $short_open_tag                     = $php::params::short_open_tag,
  $asp_tags                           = $php::params::asp_tags,
  $precision                          = $php::params::precision,
  $output_buffering                   = $php::params::output_buffering,
  $output_handler                     = $php::params::output_handler,
  $zlib_output_compression            = $php::params::zlib_output_compression,
  $zlib_compression_level             = $php::params::zlib_compression_level,
  $zlib_output_handler                = $php::params::zlib_output_handler,
  $implicit_flush                     = $php::params::implicit_flush,
  $unserialize_callback_func          = $php::params::unserialize_callback_func,
  $serialize_precision                = $php::params::serialize_precision,
  $allow_call_time_pass_reference     = $php::params::allow_call_time_pass_reference,
  $open_basedir                       = $php::params::open_basedir,
  $disable_functions                  = $php::params::disable_functions,
  $disable_classes                    = $php::params::disable_classes,
  $ignore_user_abort                  = $php::params::ignore_user_abort,
  $realpath_cache_size                = $php::params::realpath_cache_size,
  $realpath_cache_ttl                 = $php::params::realpath_cache_ttl,
  $zend_enable_gc                     = $php::params::zend_enable_gc,
  $expose_php                         = $php::params::expose_php,
  $max_execution_time                 = $php::params::max_execution_time,
  $max_input_time                     = $php::params::max_input_time,
  $max_input_nesting_level            = $php::params::max_input_nesting_level,
  $max_input_vars                     = $php::params::max_input_vars,
  $memory_limit                       = $php::params::memory_limit,
  $error_reporting                    = $php::params::error_reporting,
  $display_errors                     = $php::params::display_errors,
  $display_startup_errors             = $php::params::display_startup_errors,
  $log_errors                         = $php::params::log_errors,
  $log_errors_max_len                 = $php::params::log_errors_max_len,
  $ignore_repeated_errors             = $php::params::ignore_repeated_errors,
  $ignore_repeated_source             = $php::params::ignore_repeated_source,
  $report_memleaks                    = $php::params::report_memleaks,
  $report_zend_debug                  = $php::params::report_zend_debug,
  $track_errors                       = $php::params::track_errors,
  $xmlrpc_errors                      = $php::params::xmlrpc_errors,
  $xmlrpc_error_number                = $php::params::xmlrpc_error_number,
  $error_log                          = $php::params::error_log,
  $variables_order                    = $php::params::variables_order,
  $request_order                      = $php::params::request_order,
  $register_globals                   = $php::params::register_globals,
  $register_long_arrays               = $php::params::register_long_arrays,
  $register_argc_argv                 = $php::params::register_argc_argv,
  $auto_globals_jit                   = $php::params::auto_globals_jit,
  $post_max_size                      = $php::params::post_max_size,
  $magic_quotes_gpc                   = $php::params::magic_quotes_gpc,
  $magic_quotes_runtime               = $php::params::magic_quotes_runtime,
  $magic_quotes_sybase                = $php::params::magic_quotes_sybase,
  $auto_prepend_file                  = $php::params::auto_prepend_file,
  $auto_append_file                   = $php::params::auto_append_file,
  $default_mimetype                   = $php::params::default_mimetype,
  $default_charset                    = $php::params::default_charset,
  $always_populate_raw_post_data      = $php::params::always_populate_raw_post_data,
  $doc_root                           = $php::params::doc_root,
  $user_dir                           = $php::params::user_dir,
  $enable_dl                          = $php::params::enable_dl,
  $file_uploads                       = $php::params::file_uploads,
  $upload_tmp_dir                     = $php::params::upload_tmp_dir,
  $upload_max_filesize                = $php::params::upload_max_filesize,
  $max_file_uploads                   = $php::params::max_file_uploads,
  $allow_url_fopen                    = $php::params::allow_url_fopen,
  $allow_url_include                  = $php::params::allow_url_include,
  $from                               = $php::params::from,
  $user_agent                         = $php::params::user_agent,
  $default_socket_timeout             = $php::params::default_socket_timeout,
  $auto_detect_line_endings           = $php::params::auto_detect_line_endings,
  $date_timezone                      = $php::params::date_timezone,
  $date_default_latitude              = $php::params::date_default_latitude,
  $date_default_longitude             = $php::params::date_default_longitude,
  $date_sunrise_zenith                = $php::params::date_sunrise_zenith,
  $date_sunset_zenith                 = $php::params::date_sunset_zenith,
  $filter_default                     = $php::params::filter_default,
  $filter_default_flags               = $php::params::filter_default_flags,
  $iconv_input_encoding               = $php::params::iconv_input_encoding,
  $iconv_internal_encoding            = $php::params::iconv_internal_encoding,
  $iconv_output_encoding              = $php::params::iconv_output_encoding,
  $intl_default_locale                = $php::params::intl_default_locale,
  $intl_error_level                   = $php::params::intl_error_level,
  $pcre_backtrack_limit               = $php::params::pcre_backtrack_limit,
  $pcre_recursion_limit               = $php::params::pcre_recursion_limit,
  $phar_readonly                      = $php::params::phar_readonly,
  $phar_require_hash                  = $php::params::phar_require_hash,
  $phar_cache_list                    = $php::params::phar_cache_list,
  $define_syslog_variables            = $php::params::define_syslog_variables,
  $sendmail_path                      = $php::params::sendmail_path,
  $mail_force_extra_parameters        = $php::params::mail_force_extra_parameters,
  $mail_add_x_header                  = $php::params::mail_add_x_header,
  $mail_log                           = $php::params::mail_log,
  $bcmath_scale                       = $php::params::bcmath_scale,
  $browscap                           = $php::params::browscap,
  $session_save_handler               = $php::params::session_save_handler,
  $session_save_path                  = $php::params::session_save_path,
  $session_use_cookies                = $php::params::session_use_cookies,
  $session_cookie_secure              = $php::params::session_cookie_secure,
  $session_use_only_cookies           = $php::params::session_use_only_cookies,
  $session_name                       = $php::params::session_name,
  $session_auto_start                 = $php::params::session_auto_start,
  $session_cookie_lifetime            = $php::params::session_cookie_lifetime,
  $session_cookie_path                = $php::params::session_cookie_path,
  $session_cookie_domain              = $php::params::session_cookie_domain,
  $session_cookie_httponly            = $php::params::session_cookie_httponly,
  $session_serialize_handler          = $php::params::session_serialize_handler,
  $session_gc_probability             = $php::params::session_gc_probability,
  $session_gc_divisor                 = $php::params::session_gc_divisor,
  $session_gc_maxlifetime             = $php::params::session_gc_maxlifetime,
  $session_bug_compat_42              = $php::params::session_bug_compat_42,
  $session_bug_compat_warn            = $php::params::session_bug_compat_warn,
  $session_referer_check              = $php::params::session_referer_check,
  $session_entropy_file               = $php::params::session_entropy_file,
  $session_entropy_length             = $php::params::session_entropy_length,
  $session_cache_limiter              = $php::params::session_cache_limiter,
  $session_cache_expire               = $php::params::session_cache_expire,
  $session_use_trans_sid              = $php::params::session_use_trans_sid,
  $session_hash_function              = $php::params::session_hash_function,
  $session_hash_bits_per_character    = $php::params::session_hash_bits_per_character,
  $url_rewriter_tags                  = $php::params::url_rewriter_tags,
  $assert_active                      = $php::params::assert_active,
  $assert_warning                     = $php::params::assert_warning,
  $assert_bail                        = $php::params::assert_bail,
  $assert_callback                    = $php::params::assert_callback,
  $assert_quiet_eval                  = $php::params::assert_quiet_eval,
  $sysvshm_init_mem                   = $php::params::sysvshm_init_mem,
  $mbstring_language                  = $php::params::mbstring_language,
  $mbstring_internal_encoding         = $php::params::mbstring_internal_encoding,
  $mbstring_http_input                = $php::params::mbstring_http_input,
  $mbstring_http_output               = $php::params::mbstring_http_output,
  $mbstring_encoding_translation      = $php::params::mbstring_encoding_translation,
  $mbstring_detect_order              = $php::params::mbstring_detect_order,
  $mbstring_substitute_character      = $php::params::mbstring_substitute_character,
  $mbstring_func_overload             = $php::params::mbstring_func_overload,
  $mbstring_strict_detection          = $php::params::mbstring_strict_detection,
  $mbstring_http_output_conv_mimetype = $php::params::mbstring_http_output_conv_mimetype,
  $mbstring_script_encoding           = $php::params::mbstring_script_encoding,
  $gd_jpeg_ignore_warning             = $php::params::gd_jpeg_ignore_warning,
  $soap_wsdl_cache_enabled            = $php::params::soap_wsdl_cache_enabled,
  $soap_wsdl_cache_dir                = $php::params::soap_wsdl_cache_dir,
  $soap_wsdl_cache_ttl                = $php::params::soap_wsdl_cache_ttl,
  $soap_wsdl_cache_limit              = $php::params::soap_wsdl_cache_limit,
  $service                            = $php::params::service

) inherits php::params {

  #-----------------------------------------------------------------------------
  # Installation

  package { 'php':
    name   => $cli_package,
    ensure => $cli_ensure,
  }

  if ! empty($extra_packages) {
    package { 'php-extra':
      name    => $extra_packages,
      ensure  => $extra_ensure,
      require => Package['php'],
    }
  }

  package { 'php-pear':
    name    => $pear_package,
    ensure  => $pear_ensure,
    require => Package['php'],
    notify  => Exec['php-pear-update'],
  }

  #---

  exec { 'php-pear-update':
    path        => [ '/bin', '/usr/bin', '/usr/local/bin' ],
    command     => "pear update-channels",
    refreshonly => true,
  }

  #---

  if $module_packages {
    php::module { $module_packages:
      ensure  => $module_ensure,
      service => $service
    }
  }

  if $pear_module_packages {
    php::module { $pear_module_packages:
      ensure   => $module_ensure,
      provider => 'pear',
      service  => $service
    }
  }

  if $pecl_module_packages {
    php::module { $pecl_module_packages:
      ensure   => $module_ensure,
      provider => 'pecl',
      service  => $service
    }
  }

  #-----------------------------------------------------------------------------
  # Configuration

  file { 'php-cli-dir':
    path    => $cli_dir,
    ensure  => directory,
    require => Package['php'],
  }

  file { 'php-cli-ini':
    path    => $cli_ini,
    content => template($cli_ini_template),
    require => File['php-cli-dir'],
  }

  file { 'php-conf-dir':
    path    => $conf_dir,
    ensure  => directory,
    require => Package['php'],
  }
}
