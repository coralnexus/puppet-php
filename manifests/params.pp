
class php::params inherits php::default {

  $service                            = module_param('service', 'apache')

  $cli_package                        = module_param('cli_package')
  $cli_ensure                         = module_param('cli_ensure')
  $extra_packages                     = module_param('extra_packages')
  $extra_ensure                       = module_param('extra_ensure')
  $pear_package                       = module_param('pear_package')
  $pear_ensure                        = module_param('pear_ensure')
  $gd_package                         = module_param('gd_package')
  $curl_package                       = module_param('curl_package')
  $xmlrpc_package                     = module_param('xmlrpc_package')
  $intl_package                       = module_param('intl_package')
  $imagick_package                    = module_param('imagick_package')
  $module_packages                    = module_param('module_packages')
  $pear_module_packages               = module_param('pear_module_packages')
  $pecl_module_packages               = module_param('pecl_module_packages')

  #---

  $etc_dir                            = module_param('etc_dir')
  $conf_dir                           = module_param('conf_dir')
  $cli_dir                            = module_param('cli_dir')
  $cli_ini                            = module_param('cli_ini')
  $cli_ini_template                   = module_param('cli_ini_template')
  $doc_root                           = module_param('doc_root')
  $user_dir                           = module_param('user_dir')
  $upload_tmp_dir                     = module_param('upload_tmp_dir')

  #---

  $user_ini_filename                  = module_param('cli_user_ini_filename', $php::default::user_ini_filename)
  $user_ini_cache_ttl                 = module_param('cli_user_ini_cache_ttl', $php::default::user_ini_cache_ttl)
  $short_open_tag                     = module_param('cli_short_open_tag', $php::default::short_open_tag)
  $asp_tags                           = module_param('cli_asp_tags', $php::default::asp_tags)
  $precision                          = module_param('cli_precision', $php::default::precision)
  $output_buffering                   = module_param('cli_output_buffering', $php::default::output_buffering)
  $output_handler                     = module_param('cli_output_handler', $php::default::output_handler)
  $zlib_output_compression            = module_param('cli_zlib_output_compression', $php::default::zlib_output_compression)
  $zlib_compression_level             = module_param('cli_zlib_compression_level', $php::default::zlib_compression_level)
  $zlib_output_handler                = module_param('cli_zlib_output_handler', $php::default::zlib_output_handler)
  $implicit_flush                     = module_param('cli_implicit_flush', $php::default::implicit_flush)
  $unserialize_callback_func          = module_param('cli_unserialize_callback_func', $php::default::unserialize_callback_func)
  $serialize_precision                = module_param('cli_serialize_precision', $php::default::serialize_precision)
  $allow_call_time_pass_reference     = module_param('cli_allow_call_time_pass_reference', $php::default::allow_call_time_pass_reference)
  $open_basedir                       = module_param('cli_open_basedir', $php::default::open_basedir)
  $disable_functions                  = module_param('cli_disable_functions', $php::default::disable_functions)
  $disable_classes                    = module_param('cli_disable_classes', $php::default::disable_classes)
  $ignore_user_abort                  = module_param('cli_ignore_user_abort', $php::default::ignore_user_abort)
  $realpath_cache_size                = module_param('cli_realpath_cache_size', $php::default::realpath_cache_size)
  $realpath_cache_ttl                 = module_param('cli_realpath_cache_ttl', $php::default::realpath_cache_ttl)
  $zend_enable_gc                     = module_param('cli_zend_enable_gc', $php::default::zend_enable_gc)
  $expose_php                         = module_param('cli_expose_php', $php::default::expose_php)
  $max_execution_time                 = module_param('cli_max_execution_time', $php::default::max_execution_time)
  $max_input_time                     = module_param('cli_max_input_time', $php::default::max_input_time)
  $max_input_nesting_level            = module_param('cli_max_input_nesting_level', $php::default::max_input_nesting_level)
  $max_input_vars                     = module_param('cli_max_input_vars', $php::default::max_input_vars)
  $memory_limit                       = module_param('cli_memory_limit', $php::default::memory_limit)
  $error_reporting                    = module_param('cli_error_reporting', $php::default::error_reporting)
  $display_errors                     = module_param('cli_display_errors', $php::default::display_errors)
  $display_startup_errors             = module_param('cli_display_startup_errors', $php::default::display_startup_errors)
  $log_errors                         = module_param('cli_log_errors', $php::default::log_errors)
  $log_errors_max_len                 = module_param('cli_log_errors_max_len', $php::default::log_errors_max_len)
  $ignore_repeated_errors             = module_param('cli_ignore_repeated_errors', $php::default::ignore_repeated_errors)
  $ignore_repeated_source             = module_param('cli_ignore_repeated_source', $php::default::ignore_repeated_source)
  $report_memleaks                    = module_param('cli_report_memleaks', $php::default::report_memleaks)
  $report_zend_debug                  = module_param('cli_report_zend_debug', $php::default::report_zend_debug)
  $track_errors                       = module_param('cli_track_errors', $php::default::track_errors)
  $xmlrpc_errors                      = module_param('cli_xmlrpc_errors', $php::default::xmlrpc_errors)
  $xmlrpc_error_number                = module_param('cli_xmlrpc_error_number', $php::default::xmlrpc_error_number)
  $error_log                          = module_param('cli_error_log', $php::default::error_log)
  $variables_order                    = module_param('cli_variables_order', $php::default::variables_order)
  $request_order                      = module_param('cli_request_order', $php::default::request_order)
  $register_globals                   = module_param('cli_register_globals', $php::default::register_globals)
  $register_long_arrays               = module_param('cli_register_long_arrays', $php::default::register_long_arrays)
  $register_argc_argv                 = module_param('cli_register_argc_argv', $php::default::register_argc_argv)
  $auto_globals_jit                   = module_param('cli_auto_globals_jit', $php::default::auto_globals_jit)
  $post_max_size                      = module_param('cli_post_max_size', $php::default::post_max_size)
  $magic_quotes_gpc                   = module_param('cli_magic_quotes_gpc', $php::default::magic_quotes_gpc)
  $magic_quotes_runtime               = module_param('cli_magic_quotes_runtime', $php::default::magic_quotes_runtime)
  $magic_quotes_sybase                = module_param('cli_magic_quotes_sybase', $php::default::magic_quotes_sybase)
  $auto_prepend_file                  = module_param('cli_auto_prepend_file', $php::default::auto_prepend_file)
  $auto_append_file                   = module_param('cli_auto_append_file', $php::default::auto_append_file)
  $default_mimetype                   = module_param('cli_default_mimetype', $php::default::default_mimetype)
  $default_charset                    = module_param('cli_default_charset', $php::default::default_charset)
  $always_populate_raw_post_data      = module_param('cli_always_populate_raw_post_data', $php::default::always_populate_raw_post_data)
  $enable_dl                          = module_param('cli_enable_dl', $php::default::enable_dl)
  $file_uploads                       = module_param('cli_file_uploads', $php::default::file_uploads)
  $upload_max_filesize                = module_param('cli_upload_max_filesize', $php::default::upload_max_filesize)
  $max_file_uploads                   = module_param('cli_max_file_uploads', $php::default::max_file_uploads)
  $allow_url_fopen                    = module_param('cli_allow_url_fopen', $php::default::allow_url_fopen)
  $allow_url_include                  = module_param('cli_allow_url_include', $php::default::allow_url_include)
  $from                               = module_param('cli_from', $php::default::from)
  $user_agent                         = module_param('cli_user_agent', $php::default::user_agent)
  $default_socket_timeout             = module_param('cli_default_socket_timeout', $php::default::default_socket_timeout)
  $auto_detect_line_endings           = module_param('cli_auto_detect_line_endings', $php::default::auto_detect_line_endings)
  $date_timezone                      = module_param('cli_date_timezone', $php::default::date_timezone)
  $date_default_latitude              = module_param('cli_date_default_latitude', $php::default::date_default_latitude)
  $date_default_longitude             = module_param('cli_date_default_longitude', $php::default::date_default_longitude)
  $date_sunrise_zenith                = module_param('cli_date_sunrise_zenith', $php::default::date_sunrise_zenith)
  $date_sunset_zenith                 = module_param('cli_date_sunset_zenith', $php::default::date_sunset_zenith)
  $filter_default                     = module_param('cli_filter_default', $php::default::filter_default)
  $filter_default_flags               = module_param('cli_filter_default_flags', $php::default::filter_default_flags)
  $iconv_input_encoding               = module_param('cli_iconv_input_encoding', $php::default::iconv_input_encoding)
  $iconv_internal_encoding            = module_param('cli_iconv_internal_encoding', $php::default::iconv_internal_encoding)
  $iconv_output_encoding              = module_param('cli_iconv_output_encoding', $php::default::iconv_output_encoding)
  $intl_default_locale                = module_param('cli_intl_default_locale', $php::default::intl_default_locale)
  $intl_error_level                   = module_param('cli_intl_error_level', $php::default::intl_error_level)
  $pcre_backtrack_limit               = module_param('cli_pcre_backtrack_limit', $php::default::pcre_backtrack_limit)
  $pcre_recursion_limit               = module_param('cli_pcre_recursion_limit', $php::default::pcre_recursion_limit)
  $phar_readonly                      = module_param('cli_phar_readonly', $php::default::phar_readonly)
  $phar_require_hash                  = module_param('cli_phar_require_hash', $php::default::phar_require_hash)
  $phar_cache_list                    = module_param('cli_phar_cache_list', $php::default::phar_cache_list)
  $define_syslog_variables            = module_param('cli_define_syslog_variables', $php::default::define_syslog_variables)
  $sendmail_path                      = module_param('cli_sendmail_path', $php::default::sendmail_path)
  $mail_force_extra_parameters        = module_param('cli_mail_force_extra_parameters', $php::default::mail_force_extra_parameters)
  $mail_add_x_header                  = module_param('cli_mail_add_x_header', $php::default::mail_add_x_header)
  $mail_log                           = module_param('cli_mail_log', $php::default::mail_log)
  $bcmath_scale                       = module_param('cli_bcmath_scale', $php::default::bcmath_scale)
  $browscap                           = module_param('cli_browscap', $php::default::browscap)
  $session_save_path                  = module_param('session_save_path')
  $session_entropy_file               = module_param('session_entropy_file')
  $session_save_handler               = module_param('cli_session_save_handler', $php::default::session_save_handler)
  $session_use_cookies                = module_param('cli_session_use_cookies', $php::default::session_use_cookies)
  $session_cookie_secure              = module_param('cli_session_cookie_secure', $php::default::session_cookie_secure)
  $session_use_only_cookies           = module_param('cli_session_use_only_cookies', $php::default::session_use_only_cookies)
  $session_name                       = module_param('cli_session_name', $php::default::session_name)
  $session_auto_start                 = module_param('cli_session_auto_start', $php::default::session_auto_start)
  $session_cookie_lifetime            = module_param('cli_session_cookie_lifetime', $php::default::session_cookie_lifetime)
  $session_cookie_path                = module_param('cli_session_cookie_path', $php::default::session_cookie_path)
  $session_cookie_domain              = module_param('cli_session_cookie_domain', $php::default::session_cookie_domain)
  $session_cookie_httponly            = module_param('cli_session_cookie_httponly', $php::default::session_cookie_httponly)
  $session_serialize_handler          = module_param('cli_session_serialize_handler', $php::default::session_serialize_handler)
  $session_gc_probability             = module_param('cli_session_gc_probability', $php::default::session_gc_probability)
  $session_gc_divisor                 = module_param('cli_session_gc_divisor', $php::default::session_gc_divisor)
  $session_gc_maxlifetime             = module_param('cli_session_gc_maxlifetime', $php::default::session_gc_maxlifetime)
  $session_bug_compat_42              = module_param('cli_session_bug_compat_42', $php::default::session_bug_compat_42)
  $session_bug_compat_warn            = module_param('cli_session_bug_compat_warn', $php::default::session_bug_compat_warn)
  $session_referer_check              = module_param('cli_session_referer_check', $php::default::session_referer_check)
  $session_entropy_length             = module_param('cli_session_entropy_length', $php::default::session_entropy_length)
  $session_cache_limiter              = module_param('cli_session_cache_limiter', $php::default::session_cache_limiter)
  $session_cache_expire               = module_param('cli_session_cache_expire', $php::default::session_cache_expire)
  $session_use_trans_sid              = module_param('cli_session_use_trans_sid', $php::default::session_use_trans_sid)
  $session_hash_function              = module_param('cli_session_hash_function', $php::default::session_hash_function)
  $session_hash_bits_per_character    = module_param('cli_session_hash_bits_per_character', $php::default::session_hash_bits_per_character)
  $url_rewriter_tags                  = module_param('cli_url_rewriter_tags', $php::default::url_rewriter_tags)
  $assert_active                      = module_param('cli_assert_active', $php::default::assert_active)
  $assert_warning                     = module_param('cli_assert_warning', $php::default::assert_warning)
  $assert_bail                        = module_param('cli_assert_bail', $php::default::assert_bail)
  $assert_callback                    = module_param('cli_assert_callback', $php::default::assert_callback)
  $assert_quiet_eval                  = module_param('cli_assert_quiet_eval', $php::default::assert_quiet_eval)
  $sysvshm_init_mem                   = module_param('cli_sysvshm_init_mem', $php::default::sysvshm_init_mem)
  $mbstring_language                  = module_param('cli_mbstring_language', $php::default::mbstring_language)
  $mbstring_internal_encoding         = module_param('cli_mbstring_internal_encoding', $php::default::mbstring_internal_encoding)
  $mbstring_http_input                = module_param('cli_mbstring_http_input', $php::default::mbstring_http_input)
  $mbstring_http_output               = module_param('cli_mbstring_http_output', $php::default::mbstring_http_output)
  $mbstring_encoding_translation      = module_param('cli_mbstring_encoding_translation', $php::default::mbstring_encoding_translation)
  $mbstring_detect_order              = module_param('cli_mbstring_detect_order', $php::default::mbstring_detect_order)
  $mbstring_substitute_character      = module_param('cli_mbstring_substitute_character', $php::default::mbstring_substitute_character)
  $mbstring_func_overload             = module_param('cli_mbstring_func_overload', $php::default::mbstring_func_overload)
  $mbstring_strict_detection          = module_param('cli_mbstring_strict_detection', $php::default::mbstring_strict_detection)
  $mbstring_http_output_conv_mimetype = module_param('cli_mbstring_http_output_conv_mimetype', $php::default::mbstring_http_output_conv_mimetype)
  $mbstring_script_encoding           = module_param('cli_mbstring_script_encoding', $php::default::mbstring_script_encoding)
  $gd_jpeg_ignore_warning             = module_param('cli_gd_jpeg_ignore_warning', $php::default::gd_jpeg_ignore_warning)
  $soap_wsdl_cache_dir                = module_param('soap_wsdl_cache_dir')
  $soap_wsdl_cache_enabled            = module_param('cli_soap_wsdl_cache_enabled', $php::default::soap_wsdl_cache_enabled)
  $soap_wsdl_cache_ttl                = module_param('cli_soap_wsdl_cache_ttl', $php::default::soap_wsdl_cache_ttl)
  $soap_wsdl_cache_limit              = module_param('cli_soap_wsdl_cache_limit', $php::default::soap_wsdl_cache_limit)

  #---

  $module_ensure                      = module_param('module_ensure')
  $module_package_prefix              = module_param('module_package_prefix')
  $module_extra_ensure                = module_param('module_extra_ensure')
  $module_content                     = module_param('module_content')
  $module_provider                    = module_param('module_provider')

  $module_enable_command              = module_param('module_enable_command')
}
