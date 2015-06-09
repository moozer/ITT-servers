This is an example of using Vagrant to spin up and provision a roundcube machine.

The vagrant base box path will need to be changed to a valid debian/ubuntu base box. Also, the Vagrantfile is libvirt specific.

Default is to use "deb8-base". This must be installed using 

  vagrant box add ftp://<ip>/deb8-base


