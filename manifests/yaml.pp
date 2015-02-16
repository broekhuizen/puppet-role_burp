# == Class: role_burp::yaml
#
class role_burp::yaml (
  $yaml = '
---
burp::client::server
  127.0.0.1

burp::client::password
  password

burp::client::client_password
  password
  
burp::client::cname

burp::client::server_can_restore
  1

burp::client::includes:  
  "/home"
  
burp::client::excludes: 
  "/tmp"

burp::client::options:

burp::client::cron
  true

burp::server::directory 
  "/mnt/backup/burpdata"
  
burp::server::max_children      
  25

burp::server::max_status_children
  25

burp::server::keep
  100

burp::server::waittime
  20h

burp::server::starttime
  Mon,Tue,Wed,Thu,Fri,Sat,Sun,00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23

burp::server::common_clientconfig
  working_dir_recovery_method=resume

burp::server::clientconf_hash:
  servername-01.domain:
    includes:
      - C:/
      - D:/
    excludes:
      - D:/$RECYCLE.BIN/
    options:
    password: password

  servername-02.domain:
    includes:
      - C:/
      - D:/
    excludes:
      - D:/$RECYCLE.BIN/
    options:
    password: password
---
') {

 $parameters = parseyaml($role_burp::yaml::yaml)

}
