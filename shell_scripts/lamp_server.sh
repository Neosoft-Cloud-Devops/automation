#!/bin/bash

if [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]  #To check which os 
then
    sudo apt-get update	                        #To update the system
    sudo apt-get -y install apache2             #To install apache on Ubuntu/Debian
    sudo service apache2 enable                #To enable the the apache service so that everytime service will start at boot time
    sudo service apache2 start                  #To start the service
    sudo service apache2 status                 #To check the service status  
    sudo apt-get -y install php php-mysql
    sudo apt-get -y install mysql-server
    sudo service mysql enable
    sudo service mysql start
    sudo service mysql status


elif [ "`lsb_release -is`" == "CentOS" ] || [ "`lsb_release -is`" == "RedHat" ]
then
    sudo yum -y install httpd                  #To update the system
    sudo systemctl enable httpd                #To install apache on Centos/Redhat 
    sudo systemctl start httpd                 #To enable the the apache service so that everytime service will start at boot time
    sudo systemctl status httpd                #To start the service
    sudo yum -y install php php-mysql
    sudo yum -y install mysql-server
    sudo systemctl enable mysql
    sudo systemctl start mysql
    sudo systemctl status mysql
else
    echo "Unsupported Operating System";
fi
~          
