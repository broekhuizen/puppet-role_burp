# == Class: role_burp::main
#
#
class role_burp::main (
  $server = $role_burp::yaml::parameters['role_burp::server'],
  ) {
  class { 'burp': }
    server => $server,
 
}
