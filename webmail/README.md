Installing a really *insecure* webmail

Start with a minimal debian installation

1. Install mysql server

  apt-get install mysql-server

  Do remember the mysql root password

2. Install roundcube

  apt-get install roundcube

3. Apache config change

  nano /etc/roundcube/apache.conf 

  and uncomment the line 

  Alias /roundcube /var/lib/roundcube 

4. Roundcube config change

  nano /etc/roundcube/main.inc.php
...
// IMAP
// ----------------------------------

// the mail host chosen to perform the log-i00n

$rcmail_config['default_host'] = '10.165.16.31';
...
  ...

  $rcmail_config['smtp_server'] = '<school internal mailserver>';

  ...
5. Restart service

  service apache2 restart

6. Access using a browser

  http://<insert-ip>/roundcube

  It will ask for a username and imap server.
  

I got some inspiration from here

  http://www.server-world.info/en/note?os=Debian_7.0&p=httpd&f=15

