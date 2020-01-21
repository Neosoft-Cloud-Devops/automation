#!/bin/bash

echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"

apt-get update
apt-get -y upgrade


echo -e "\n$(date "+%T") \t Script Terminated"
