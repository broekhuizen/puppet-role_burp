# == Class: role_burp::yaml
#
class role_burp::yaml (
  $yaml = '
---
burp::server: 127.0.0.1
burp::password: password
burp::server_can_restore: 1
burp::includes: "/home"
burp::excludes: "/tmp"
burp::options:
burp::cron: true
burp::directory: "/mnt/backup/burpdata"
burp::max_children: 25
burp::max_status_children: 25
burp::keep: 100
burp::waittime: 20h
burp::starttime
  Mon,Tue,Wed,Thu,Fri,Sat,Sun,00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23

burp::common_clientconfig: working_dir_recovery_method=resume

burp::clientconf_hash:
  servername-01.domain:
    includes:
      - "C:/"
      - "D:/"
    excludes:
      - "D:/$RECYCLE.BIN/"
    options:
    password: password

  servername-02.domain:
    includes:
      - "C:/"
      - "D:/"
    excludes:
      - "D:/$RECYCLE.BIN/"
    options:
    password: password
---
') {

 $parameters = parseyaml($role_burp::yaml::yaml)

}
