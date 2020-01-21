#!/bin/bash


aws route53 list-hosted-zones   #To list all Hosted Zones

while true; do
    read -p "Do you want delete any Hosted_Zone?" yn
    case $yn in
	[Yy]* ) echo "Enter the ID of the Hosted Zone which you want delete."
                read host_id
                aws route53 delete-hosted-zone --id $host_id; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

