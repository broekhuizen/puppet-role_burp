# == Class: role_burp::yaml
#
class role_burp::yaml (
  $yaml = '
---
role_burp::server: 127.0.0.1
role_burp::password: password
role_burp::server_can_restore: 1
role_burp::includes: "/home"
role_burp::excludes: "/tmp"
role_burp::options:
role_burp::cron: true
role_burp::directory: "/mnt/backup/burpdata"
role_burp::max_children: 25
role_burp::max_status_children: 25
role_burp::keep: 100
role_burp::waittime: 20h
role_burp::starttime
  Mon,Tue,Wed,Thu,Fri,Sat,Sun,00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23

role_burp::common_clientconfig: working_dir_recovery_method=resume

role_burp::clientconf_hash:
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
