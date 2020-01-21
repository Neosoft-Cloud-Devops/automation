#!/bin/bash


if [ -f /etc/redhat-release ]; then
  sudo yum update
  sudo yum -y install httpd   
  sudo systemctl enable httpd.service
  sudo systemctl start httpd.service
  sudo systemctl status httpd.service

fi

if [ -f /etc/lsb-release ]; then
  sudo apt-get update
  sudo apt-get -y install apache2
  sudo systemctl enable apache2.service
  sudo systemctl start apache2.service
  sudo systemctl status apache2.service
fi 
