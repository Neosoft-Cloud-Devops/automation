#!/bin/bash

list=`aws route53 list-hosted-zones`
echo "The list of hosted zones: $list"

echo "Enter the Host ID for which you want to create record sets:"
read host_id

echo "Enter the action you want input"
read action_name


echo "Enter the domain name for which you want to create record sets:"
read domain_name


echo "Enter the Type of record set which you want to create:"
read record_type


echo "Enter the value for record set which you want to create(IP address):"
read ip_addr


echo "Enter the name of json file:"
read file_name

sed -i '/"Action": ""/s/""/$action_name/' $file_name
sed -i '/"Name": ""/s/""/$domain_name/' $file_name
sed -i '/"Type": ""/s/""/$record_type/' $file_name
sed -i '/"Value": ""/s/""/$ip_addr"/' $file_name


aws route53 change-resource-record-sets --hosted-zone-id $host_id --change-batch file://$file_name
