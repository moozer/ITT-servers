# very basic installation of the xfce desktop
package { "task-xfce-desktop":
    ensure => "latest"
} -> exec { "rebooting":
    command => "/sbin/reboot now",
}
