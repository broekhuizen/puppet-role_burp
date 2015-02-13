# == Class: role_burp::yaml
#
class role_burp::yaml (
  $yaml = '
---
role_test::configfile:
  test.yaml
---
') {

 $parameters = parseyaml($role_burp::yaml::yaml)

}
