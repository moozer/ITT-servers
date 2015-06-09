#!/bin/bash
echo installing puppet
apt-get install puppet -y


echo install pupp-modules

mkdir -p /etc/puppet/modules;

if [ ! -d /etc/puppet/modules/apache ]; then
  puppet module install puppetlabs-apache
fi

