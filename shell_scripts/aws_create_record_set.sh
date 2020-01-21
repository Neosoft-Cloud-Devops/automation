#!/bin/bash

list=`aws route53 list-hosted-zones`
echo "The list of hosted zones: $list"


echo "Enter the Host ID for which you want to create record set:"
read host_id

echo "Enter the json file name which consists of values for record:"
read file_name

aws route53 change-resource-record-sets --hosted-zone-id $host_id --change-batch file://$file_name

