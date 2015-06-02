This is an example of using Vagrant to spin up and provision an FTP server.

The vagrant base box path will need to be changed to a valid debian/ubuntu base box.

Default is to use "deb8-base". This must be installed using 

  vagrant box add ftp://<ip>/deb8-base

The FTP server will enable anonymous download of files from ./data/files.

