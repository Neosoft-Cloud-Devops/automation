#!/bin/bash


hosted_zone= aws route53 list-hosted-zones

while true; do
    read -p "Do you want create new Hosted_Zone?" yn
    case $yn in
	[Yy]* ) echo "Enter the domain name for which you want to create Hosted Zone."
                read domain_name
                echo "Enter any comments that you want to include about the hosted zone."
                read comment
	        echo "Enter the value that you want to assign for CallerReference"
	        read caller_ref	
                aws route53 create-hosted-zone --name $domain_name --caller-reference $caller_ref --hosted-zone-config Comment="$comment"; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


