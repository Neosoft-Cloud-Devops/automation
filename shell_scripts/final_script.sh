#!/bin/bash

#This script automates the following things:
#1.Launch Server.
#2.Create Elastic IP.
#3.Assign Elastic IP to EC2 Instance.
#4.Create Hosted Zones in AWS Route 53.
#5.Create Record Sets in AWS Route 53.
#6.LAMP Server Installation


set -e

echo "--------------------------------------------------------------------"
echo "*******************Details of existing instances*******************"
echo "--------------------------------------------------------------------"


aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,InstanceType,PublicIpAddress,Tags[?Key==`Name`]| [0].Value,State.Name]' --output table


echo "--------------------------------------------------------------------"
echo "*******************Process of Launching Server**********************"
echo "--------------------------------------------------------------------"


while true; do
    read -p "Do you want launch new instance?" yn
    case $yn in
        [Yy]* ) echo "Enter the image-id for which you want to launch server(eg.ami-00068cd7555f543d5):"
                read image_id
		echo "Enter the count that how many instances you want to launch(eg.1):"
                read count
                echo "Enter the instance type(eg.t2.micro):"
                read instance_type
                echo "Enter the Key name for your instance:"
                read key_name
                echo "Enter the security group id for your instance:"
                read security_group_id
                echo "Enter the subnet id for your instance:"
                read subnet_id
		echo "Enter the value for Key(eg.Name):"
		read key1
		echo "Enter the value for Value:"
		read value1
		echo "Enter the value for Key:"
                read key2
                echo "Enter the value for Value:"
                read value2
		aws ec2 run-instances --image-id $image_id --count $count --instance-type $instance_type --key-name $key_name --security-group-ids $security_group_id --subnet-id $subnet_id --tag-specifications 'ResourceType=instance,Tags=[{Key='${key1}',Value='${value1}'}]'; break;; 
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "--------------------------------------------------------------------------"
echo "********************Server Launched Successfully**************************"
echo "--------------------------------------------------------------------------"


echo "--------------------------------------------------------------------------"
echo "*****************Checking list of Elastic IP's****************************"
echo "--------------------------------------------------------------------------"

list_eip=`aws ec2 describe-addresses`
echo "List of Elastic IP's: $list_eip"


while true; do
    read -p "Do you want create new Elastic IP?" yn
    case $yn in
	[Yy]* ) aws ec2 allocate-address;
	        echo "Elastic IP created successfully";	break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo "--------------------------------------------------------------------------"
echo "*************************Tagging Elastic IP*******************************"
echo "--------------------------------------------------------------------------"


while true; do
    read -p "Do you want tag Elastic IP?" yn
    case $yn in
        [Yy]* ) echo "Enter the alloction id of Elastic IP:"
		read allocation_id
		echo "Enter the value of key for Elastic IP:"
		read key_eip
		echo "Enter the value of Value for Elastic IP:"
                read value_eip
		aws ec2 create-tags --resources $allocation_id --tags Key=$key_eip,Value=$value_eip
                echo "Elastic IP tagged successfully"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo "----------------------------------------------------------------------------"
echo "*******************Assign Elastic IP Address to Instance********************"
echo "----------------------------------------------------------------------------"


while true; do
    read -p "Do you want assign Elastic IP to Instance?" yn
    case $yn in
	[Yy]* ) echo "Enter the instance id to which you want to assign Elastic Ip:"
		read instance_id
		echo "Enter the Elastic IP which you want to assign for instance:"
		read elastic_ip
		aws ec2 associate-address --instance-id $instance_id --public-ip $elastic_ip;
	        echo "Elastic IP assigned to instance successfully"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done



echo "------------------------------------------------------------------------------"
echo "****************List of existing hosted zones*******************************"
echo "------------------------------------------------------------------------------"


list=`aws route53 list-hosted-zones`
echo "The list of hosted zones: $list"


echo "------------------------------------------------------------------------------"
echo "***************Create Hosted Zones in Route 53********************************"
echo "------------------------------------------------------------------------------"


while true; do
    read -p "Do you want create new Hosted_Zone?" yn
    case $yn in
	[Yy]* ) echo "Enter the domain name for which you want to create Hosted Zone."
                read domain_name
                echo "Enter any comments that you want to include about the hosted zone."
                read comment
	        echo "Enter the value that you want to assign for CallerReference"
	        read caller_ref
                aws route53 create-hosted-zone --name $domain_name --caller-reference $caller_ref --hosted-zone-config Comment="$comment"
	       	echo "Hosted zone created succcesfully"
		aws route53 list-hosted-zones; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "----------------------------------------------------------------------------------"
echo "***********************Create Record Sets in Route 53*****************************"
echo "----------------------------------------------------------------------------------"

list=`aws route53 list-hosted-zones`
echo "The list of hosted zones: $list"

echo "Enter the Host ID for which you want to create record set:"
read host_id

echo "Enter the json file name which consists of values for record:"
read file_name

aws route53 change-resource-record-sets --hosted-zone-id $host_id --change-batch file://$file_name

echo "Record set created succesfully."

