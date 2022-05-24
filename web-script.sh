#!/bin/bash

sudo yum install httpd php -y
sudo rm -f /etc/httpd/conf/httpd.conf
sudo wget -P /etc/httpd/conf/ https://objectstorage.us-phoenix-1.oraclecloud.com/n/bmc-flaviop/b/web-page/o/httpd.conf
sudo wget -P /var/www/html/ https://objectstorage.us-phoenix-1.oraclecloud.com/n/bmc-flaviop/b/web-page/o/index.php
sudo apachectl start
sudo systemctl enable httpd
sudo firewall-offline-cmd --add-port=80/tcp
sudo systemctl restart firewalld
