# == Class: role_burp::main
#
#
class role_burp::main (
  $mode                  = $role_burp::yaml::parameters['role_burp::main::mode'],
  $ssl_key_password      = $role_burp::yaml::parameters['role_burp::main::ssl_key_password'],
  $password              = $role_burp::yaml::parameters['role_burp::main::password'],
  $server                = $role_burp::yaml::parameters['role_burp::main::server'],
  $clientconf_hash       = $role_burp::yaml::parameters['role_burp::main::clientconf_hash'],
  $backup_stats_logstash = $role_burp::yaml::parameters['role_burp::main::backup_stats_logstash'],
  $includes              = $role_burp::yaml::parameters['role_burp::main::includes'],
  $excludes              = $role_burp::yaml::parameters['role_burp::main::excludes'],
  $clientside_options    = $role_burp::yaml::parameters['role_burp::main::clientside_options'],
  $serverside_options    = $role_burp::yaml::parameters['role_burp::main::serverside_options'],
  
  ) {
  
  class { 'burp':
    mode                  => $mode,
    ssl_key_password      => $ssl_key_password,
    password              => $password,
    server                => $server,
    clientconf_hash       => $clientconf_hash,
    backup_stats_logstash => $backup_stats_logstash,
    includes              => $includes,
    excludes              => $excludes,
    clientside_options    => $clientside_options,
    serverside_options    => $serverside_options,
  }
  
}
