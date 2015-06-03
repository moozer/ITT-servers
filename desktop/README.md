This is an example of using Vagrant to spin up and provision using a puppet manifest

The vagrant base box path will need to be changed to a valid debian/ubuntu base box.

Default is to use "deb8-base". This must be installed using 

  vagrant box add ftp://\<ip\>/deb8-base


The manifest will install the xfce-task to enable a GUI interface.

Some references:

* http://docs.vagrantup.com/v2/provisioning/puppet_apply.html
* http://www.puppetcookbook.com/posts/latest-package.html
