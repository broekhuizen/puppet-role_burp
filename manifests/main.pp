# == Class: role_burp::main
#
#
class role_burp::main (
  $server                  = $role_burp::yaml::parameters['role_burp::main::server'],
  $client                  = $role_burp::yaml::parameters['role_burp::main::client'],
  $cname                   = $role_burp::yaml::parameters['role_burp::main::cname'],
  $directory               = $role_burp::yaml::parameters['role_burp::main::directory'],
  $client_ssl_key_password = $role_burp::yaml::parameters['role_burp::main::client_ssl_key_password'],
  $server_ssl_key_password = $role_burp::yaml::parameters['role_burp::main::server_ssl_key_password'],
  $password                = $role_burp::yaml::parameters['role_burp::main::password'],
  $server_ip               = $role_burp::yaml::parameters['role_burp::main::server_ip'],
  $clientconf_hash         = $role_burp::yaml::parameters['role_burp::main::clientconf_hash'],
  $backup_stats_logstash   = $role_burp::yaml::parameters['role_burp::main::backup_stats_logstash'],
  $includes                = $role_burp::yaml::parameters['role_burp::main::includes'],
  $excludes                = $role_burp::yaml::parameters['role_burp::main::excludes'],
  $client_extra_options    = $role_burp::yaml::parameters['role_burp::main::client_extra_options'],
  $server_extra_options    = $role_burp::yaml::parameters['role_burp::main::server_extra_options'],
  ) {
  
  class { 'burp':
    server                  => $server,
    client                  => $client,
    cname                   => $cname,
    directory               => $directory,
    client_ssl_key_password => $client_ssl_key_password,
    server_ssl_key_password => $server_ssl_key_password,
    password                => $password,
    server_ip               => $server_ip,
    clientconf_hash         => $clientconf_hash,
    backup_stats_logstash   => $backup_stats_logstash,
    includes                => $includes,
    excludes                => $excludes,
    client_extra_options    => $client_extra_options,
    server_extra_options    => $server_extra_options,
  }
  
}
