#!/bin/bash


list_eip=`aws ec2 describe-addresses`
echo "List of Elastic IP's:"
echo $list_eip


while true; do
    read -p "Do you want create new Elastic IP?" yn
    case $yn in
	[Yy]* ) echo "Enter the instance id to which you want to assign Elastic Ip:"
		read instance_id
		echo "Enter the Elastic IP which you want to assign for instance:"
		read elastic_ip
		aws ec2 associate-address --instance-id $instance_id --public-ip $elastic_ip; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


