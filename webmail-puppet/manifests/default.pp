# install a user based on facter
user { $user:
  ensure     => 'present',
  password => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${password} | tr -d '\n'"),
  managehome => true,
}

class {'apache': }

#apache::vhost { 'webmail':
#  port    => '80',
#  docroot => '/var/www/first',
#}

#package { "task-xfce-desktop":
#    ensure => "latest"
#} 
#
#package { "xrdp":
#    ensure => "latest"
#} 
