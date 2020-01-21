#!/bin/bash


echo "Please enter the date in mm-dd format(ex:Nov 15): "
read x


#ls -l | grep "$x"

#find . -type f -ls |grep "$x"


echo "The files created on $x:"
find . -type f -ls |grep "$x"
echo "The count of file is:"
find . -type f -ls | grep "$x" | wc -l
