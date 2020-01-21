#!/bin/bash

echo "Enter the service of which you want to know the status:"
read service

is_running=`sudo systemctl status $service`
echo $?

if [ $? == "0" ] ;
then
echo "$service is running"
else [ $? == "1" ];
echo "$service is not running"
fi
