#!/bin/bash
sudo dnf update -y
sudo dnf install mariadb105-server
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo yum -y install php
sudo systemctl start mariadb
yes -n | sudo mysql_secure_installation
sudo yum -y install git
sudo git clone -b php https://github.com/TWhilst/BackedUpPhpApp.git /var/www/html
sudo yum -y install php php-mysqlnd
sudo systemctl start httpd
