#!/bin/bash
sudo yum -y install epel-release 
sudo yum -y install ansible
sudo yum -y install git 
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
ansible -m ping n1 aws.ini
git clone https://github.com/CeeyIT-Solutions/ecomm-3.git
sudo mv ecomm-3/* /var/www/html



