#!/bin/bash

echo "Enter instance-id of which you want to terminate your instance"
read instance_id


aws ec2 terminate-instances --instance-ids $instance_id
