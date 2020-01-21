#!/bin/bash

echo "Enter the date on which you want to check created directory(ex:Dec 15):"
read y

s=`find . -type d -ls |grep "$y"`
echo $?

if [ $? -eq 0 ]
then
 echo $s
else
 echo "No Directory"
fi
