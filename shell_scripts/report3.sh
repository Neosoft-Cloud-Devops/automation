#!/bin/bash


echo "Please enter the date in mm-dd format: "
read x


ls -l | grep "$x" 
ls -l | grep "$x" | wc -l

