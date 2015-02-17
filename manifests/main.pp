# == Class: role_burp::main
#
#
class role_burp::main (
  $mode            = $role_burp::yaml::parameters['role_burp::main::mode'],
  $password        = $role_burp::yaml::parameters['role_burp::main::password'],
  $clientconf_hash = $role_burp::yaml::parameters['role_burp::main::clientconf_hash'],
  ) {
  class { 'burp':
    mode            => $mode,
    password        => $password,
    clientconf_hash => $clientconf_hash,
  }
  
}
