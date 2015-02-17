# == Class: role_burp::main
#
#
class role_burp::main (
  $mode             = $role_burp::yaml::parameters['role_burp::main::mode'],
  $ssl_key_password = $role_burp::yaml::parameters['role_burp::main::ssl_key_password'],
  $password         = $role_burp::yaml::parameters['role_burp::main::password'],
  $clientconf_hash  = $role_burp::yaml::parameters['role_burp::main::clientconf_hash'],
  ) {
  
  class { 'burp':
    mode             => $mode,
    ssl_key_password => $ssl_key_password,
    password         => $password,
    clientconf_hash  => $clientconf_hash,
  }
  
}
