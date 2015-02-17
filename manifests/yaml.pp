# == Class: role_burp::yaml
#
class role_burp::yaml (
  $yaml = '
---
role_burp::server: 127.0.0.1

---
') {

 $parameters = parseyaml($role_burp::yaml::yaml)

}
