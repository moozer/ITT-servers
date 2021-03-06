#!/bin/sh

echo "Starting provisioning"

sudo rm /etc/apt/apt.conf

sudo apt-get update 
sudo apt-get dist-upgrade -y

sudo apt-get install vsftpd -y

sudo cp /opt/config/vsftpd.conf /etc/
sudo service vsftpd restart

echo "Provisioning done"
ip addr show eth0 

