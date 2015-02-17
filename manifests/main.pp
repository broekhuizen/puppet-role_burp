# == Class: role_burp::main
#
#
class role_burp::main (
  $mode            = $role_burp::yaml::parameters['role_burp::main::mode'],
  $clientconf_hash = $role_burp::yaml::parameters['role_burp::main::clientconf_hash'],
  ) {
  class { 'burp':
    mode            => $mode,
    clientconf_hash => $clientconf_hash,
  }
  
}
