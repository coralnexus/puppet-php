
class php::apache (

  $php_apache_package                 = $php::params::apache::os_php_apache_package,
  $php_apache_ensure                  = $php::params::apache::php_apache_ensure,
  $apache_dir                         = $php::params::apache::os_apache_dir,
  $apache_ini                         = $php::params::apache::os_apache_ini,
  $user_ini_filename                  = $php::params::apache::user_ini_filename,
  $user_ini_cache_ttl                 = $php::params::apache::user_ini_cache_ttl,
  $short_open_tag                     = $php::params::apache::short_open_tag,
  $asp_tags                           = $php::params::apache::asp_tags,
  $precision                          = $php::params::apache::precision,
  $output_buffering                   = $php::params::apache::output_buffering,
  $output_handler                     = $php::params::apache::output_handler,
  $zlib_output_compression            = $php::params::apache::zlib_output_compression,
  $zlib_compression_level             = $php::params::apache::zlib_compression_level,
  $zlib_output_handler                = $php::params::apache::zlib_output_handler,
  $implicit_flush                     = $php::params::apache::implicit_flush,
  $unserialize_callback_func          = $php::params::apache::unserialize_callback_func,
  $serialize_precision                = $php::params::apache::serialize_precision,
  $allow_call_time_pass_reference     = $php::params::apache::allow_call_time_pass_reference,
  $open_basedir                       = $php::params::apache::open_basedir,
  $disable_functions                  = $php::params::apache::disable_functions,
  $disable_classes                    = $php::params::apache::disable_classes,
  $ignore_user_abort                  = $php::params::apache::ignore_user_abort,
  $realpath_cache_size                = $php::params::apache::realpath_cache_size,
  $realpath_cache_ttl                 = $php::params::apache::realpath_cache_ttl,
  $zend_enable_gc                     = $php::params::apache::zend_enable_gc,
  $expose_php                         = $php::params::apache::expose_php,
  $max_execution_time                 = $php::params::apache::max_execution_time,
  $max_input_time                     = $php::params::apache::max_input_time,
  $max_input_nesting_level            = $php::params::apache::max_input_nesting_level,
  $max_input_vars                     = $php::params::apache::max_input_vars,
  $memory_limit                       = $php::params::apache::memory_limit,
  $error_reporting                    = $php::params::apache::error_reporting,
  $display_errors                     = $php::params::apache::display_errors,
  $display_startup_errors             = $php::params::apache::display_startup_errors,
  $log_errors                         = $php::params::apache::log_errors,
  $log_errors_max_len                 = $php::params::apache::log_errors_max_len,
  $ignore_repeated_errors             = $php::params::apache::ignore_repeated_errors,
  $ignore_repeated_source             = $php::params::apache::ignore_repeated_source,
  $report_memleaks                    = $php::params::apache::report_memleaks,
  $report_zend_debug                  = $php::params::apache::report_zend_debug,
  $track_errors                       = $php::params::apache::track_errors,
  $xmlrpc_errors                      = $php::params::apache::xmlrpc_errors,
  $xmlrpc_error_number                = $php::params::apache::xmlrpc_error_number,
  $error_log                          = $php::params::apache::error_log,
  $variables_order                    = $php::params::apache::variables_order,
  $request_order                      = $php::params::apache::request_order,
  $register_globals                   = $php::params::apache::register_globals,
  $register_long_arrays               = $php::params::apache::register_long_arrays,
  $register_argc_argv                 = $php::params::apache::register_argc_argv,
  $auto_globals_jit                   = $php::params::apache::auto_globals_jit,
  $post_max_size                      = $php::params::apache::post_max_size,
  $magic_quotes_gpc                   = $php::params::apache::magic_quotes_gpc,
  $magic_quotes_runtime               = $php::params::apache::magic_quotes_runtime,
  $auto_prepend_file                  = $php::params::apache::auto_prepend_file,
  $auto_append_file                   = $php::params::apache::auto_append_file,
  $default_mimetype                   = $php::params::apache::default_mimetype,
  $default_charset                    = $php::params::apache::default_charset,
  $always_populate_raw_post_data      = $php::params::apache::always_populate_raw_post_data,
  $doc_root                           = $php::params::os_doc_root,
  $user_dir                           = $php::params::os_user_dir,
  $enable_dl                          = $php::params::apache::enable_dl,
  $file_uploads                       = $php::params::apache::file_uploads,
  $upload_tmp_dir                     = $php::params::os_upload_tmp_dir,
  $upload_max_filesize                = $php::params::apache::upload_max_filesize,
  $max_file_uploads                   = $php::params::apache::max_file_uploads,
  $allow_url_fopen                    = $php::params::apache::allow_url_fopen,
  $allow_url_include                  = $php::params::apache::allow_url_include,
  $from                               = $php::params::apache::from,
  $user_agent                         = $php::params::apache::user_agent,
  $default_socket_timeout             = $php::params::apache::default_socket_timeout,
  $auto_detect_line_endings           = $php::params::apache::auto_detect_line_endings,
  $date_timezone                      = $php::params::apache::date_timezone,
  $date_default_latitude              = $php::params::apache::date_default_latitude,
  $date_default_longitude             = $php::params::apache::date_default_longitude,
  $date_sunrise_zenith                = $php::params::apache::date_sunrise_zenith,
  $date_sunset_zenith                 = $php::params::apache::date_sunset_zenith,
  $filter_default                     = $php::params::apache::filter_default,
  $filter_default_flags               = $php::params::apache::filter_default_flags,
  $iconv_input_encoding               = $php::params::apache::iconv_input_encoding,
  $iconv_internal_encoding            = $php::params::apache::iconv_internal_encoding,
  $iconv_output_encoding              = $php::params::apache::iconv_output_encoding,
  $intl_default_locale                = $php::params::apache::intl_default_locale,
  $intl_error_level                   = $php::params::apache::intl_error_level,
  $pcre_backtrack_limit               = $php::params::apache::pcre_backtrack_limit,
  $pcre_recursion_limit               = $php::params::apache::pcre_recursion_limit,
  $phar_readonly                      = $php::params::apache::phar_readonly,
  $phar_require_hash                  = $php::params::apache::phar_require_hash,
  $phar_cache_list                    = $php::params::apache::phar_cache_list,
  $define_syslog_variables            = $php::params::apache::define_syslog_variables,
  $sendmail_path                      = $php::params::apache::sendmail_path,
  $mail_force_extra_parameters        = $php::params::apache::mail_force_extra_parameters,
  $mail_add_x_header                  = $php::params::apache::mail_add_x_header,
  $mail_log                           = $php::params::apache::mail_log,
  $bcmath_scale                       = $php::params::apache::bcmath_scale,
  $browscap                           = $php::params::apache::browscap,
  $session_save_handler               = $php::params::apache::session_save_handler,
  $session_save_path                  = $php::params::os_session_save_path,
  $session_use_cookies                = $php::params::apache::session_use_cookies,
  $session_cookie_secure              = $php::params::apache::session_cookie_secure,
  $session_use_only_cookies           = $php::params::apache::session_use_only_cookies,
  $session_name                       = $php::params::apache::session_name,
  $session_auto_start                 = $php::params::apache::session_auto_start,
  $session_cookie_lifetime            = $php::params::apache::session_cookie_lifetime,
  $session_cookie_path                = $php::params::apache::session_cookie_path,
  $session_cookie_domain              = $php::params::apache::session_cookie_domain,
  $session_cookie_httponly            = $php::params::apache::session_cookie_httponly,
  $session_serialize_handler          = $php::params::apache::session_serialize_handler,
  $session_gc_probability             = $php::params::apache::session_gc_probability,
  $session_gc_divisor                 = $php::params::apache::session_gc_divisor,
  $session_gc_maxlifetime             = $php::params::apache::session_gc_maxlifetime,
  $session_bug_compat_42              = $php::params::apache::session_bug_compat_42,
  $session_bug_compat_warn            = $php::params::apache::session_bug_compat_warn,
  $session_referer_check              = $php::params::apache::session_referer_check,
  $session_entropy_file               = $php::params::os_session_entropy_file,
  $session_entropy_length             = $php::params::apache::session_entropy_length,
  $session_cache_limiter              = $php::params::apache::session_cache_limiter,
  $session_cache_expire               = $php::params::apache::session_cache_expire,
  $session_use_trans_sid              = $php::params::apache::session_use_trans_sid,
  $session_hash_function              = $php::params::apache::session_hash_function,
  $session_hash_bits_per_character    = $php::params::apache::session_hash_bits_per_character,
  $url_rewriter_tags                  = $php::params::apache::url_rewriter_tags,
  $assert_active                      = $php::params::apache::assert_active,
  $assert_warning                     = $php::params::apache::assert_warning,
  $assert_bail                        = $php::params::apache::assert_bail,
  $assert_callback                    = $php::params::apache::assert_callback,
  $assert_quiet_eval                  = $php::params::apache::assert_quiet_eval,
  $sysvshm_init_mem                   = $php::params::apache::sysvshm_init_mem,
  $mbstring_language                  = $php::params::apache::mbstring_language,
  $mbstring_internal_encoding         = $php::params::apache::mbstring_internal_encoding,
  $mbstring_http_input                = $php::params::apache::mbstring_http_input,
  $mbstring_http_output               = $php::params::apache::mbstring_http_output,
  $mbstring_encoding_translation      = $php::params::apache::mbstring_encoding_translation,
  $mbstring_detect_order              = $php::params::apache::mbstring_detect_order,
  $mbstring_substitute_character      = $php::params::apache::mbstring_substitute_character,
  $mbstring_func_overload             = $php::params::apache::mbstring_func_overload,
  $mbstring_strict_detection          = $php::params::apache::mbstring_strict_detection,
  $mbstring_http_output_conv_mimetype = $php::params::apache::mbstring_http_output_conv_mimetype,
  $mbstring_script_encoding           = $php::params::apache::mbstring_script_encoding,
  $gd_jpeg_ignore_warning             = $php::params::apache::gd_jpeg_ignore_warning,
  $soap_wsdl_cache_enabled            = $php::params::apache::soap_wsdl_cache_enabled,
  $soap_wsdl_cache_dir                = $php::params::os_soap_wsdl_cache_dir,
  $soap_wsdl_cache_ttl                = $php::params::apache::soap_wsdl_cache_ttl,
  $soap_wsdl_cache_limit              = $php::params::apache::soap_wsdl_cache_limit,
  $apache_ini_template                = $php::params::apache::os_apache_ini_template,
  $apache_service                     = $php::params::apache::apache_service,

) inherits php::params::apache {

  include php

  #-----------------------------------------------------------------------------

  if defined(Service[$apache_service]) {
    Package {
      notify => Service[$apache_service],
    }
    File {
      notify => Service[$apache_service],
    }
  }

  #-----------------------------------------------------------------------------
  # Installation

  package { 'php-apache':
    name    => $php_apache_package,
    ensure  => $php_apache_ensure,
    require => Class['php'],
  }

  #-----------------------------------------------------------------------------
  # Configuration

  file { 'php-apache-dir':
    path    => $apache_dir,
    ensure  => directory,
    require => Package['php-apache'],
  }

  file { 'php-apache-ini':
    path    => $apache_ini,
    content => template($apache_ini_template),
    require => File['php-apache-dir'],
  }
}