# very basic installation of the xfce desktop
user { $user:
  ensure     => 'present',
  password => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${password} | tr -d '\n'"),
  managehome => true,
}

package { "task-xfce-desktop":
    ensure => "latest"
} 
package { "xrdp":
    ensure => "latest"
} 
