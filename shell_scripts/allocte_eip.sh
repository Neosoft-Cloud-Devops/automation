#!/bin/bash


list_eip=`aws ec2 describe-addresses`
echo "List of Elastic IP's:"
echo $list_eip


while true; do
    read -p "Do you want create new Elastic IP?" yn
    case $yn in
	[Yy]* ) aws ec2 allocate-address; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

