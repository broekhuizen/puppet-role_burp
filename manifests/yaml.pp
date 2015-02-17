# == Class: role_burp::yaml
#
class role_burp::yaml (
  $yaml = '
---
role_burp::mode: client

---
') {

 $parameters = parseyaml($role_burp::yaml::yaml)

}
