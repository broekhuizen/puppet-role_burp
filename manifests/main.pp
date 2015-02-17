# == Class: role_burp::main
#
#
class role_burp::main (
  $mode = $role_burp::yaml::parameters['role_burp::mode'],
  ) {
  class { 'burp':
    mode => $mode,
  }
  
}
