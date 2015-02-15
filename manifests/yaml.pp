# == Class: role_burp::yaml
#
class role_burp::yaml (
  $yaml = '
---
# general settings
  $mode             = "server",
  $ssl_key_password = "password",

# client: settings for /etc/burp/burp.conf
  $server             = "127.0.0.1",
  $client_password    = "password",
  $cname              = $hostname,
  $server_can_restore = "1",

# client: create client config files in /etc/clientconfdir for Linux clients
  $includes = "/home",
  $excludes = "/tmp",
  $options  = "",
  $password = "password",
  $cron     = true,

# server: settings for /etc/burp-server.conf
  $directory           = "/mnt/backup/burpdata",
  $max_children        = "25",
  $max_status_children = "25",
  $keep                = "100",
  $waittime            = "20h",
  $starttime           = "Mon,Tue,Wed,Thu,Fri,Sat,Sun,00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23",
  $common_clientconfig = ['working_dir_recovery_method=resume'],

# server: create client config files in /etc/clientconfdir for Windows clients
  $clientconf_hash     = { 'servername-01.domain' => { includes => ['C:/', 'D:/'],
                                                       excludes => ['D:/$RECYCLE.BIN/'],
                                                       options  => ['options'],
                                                       password => 'password',
                                                     },

                           'servername-02.domain' => { includes => ['C:/', 'D:/'],
                                                       excludes => ['D:/$RECYCLE.BIN/'],
                                                       options  => ['options'],
                                                       password => 'password',
                                                     },
                         },
) {


---
') {

 $parameters = parseyaml($role_burp::yaml::yaml)

}
