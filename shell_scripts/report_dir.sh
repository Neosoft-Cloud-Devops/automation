#!/bin/bash


echo "Enter the date on which you want to check created directory(ex:Dec 15):"
read y

echo "The directories created on are:"
find . -type d -ls |grep "$y"

