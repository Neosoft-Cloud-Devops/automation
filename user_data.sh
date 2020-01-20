#!/bin/bash

PASSWORD=1234
ENCRYPTED_PASSWORD=$(openssl passwd -1 ${PASSWORD})
#sudo useradd ansible
sudo useradd -m -p $ENCRYPTED_PASSWORD ansible

SEARCH="PasswordAuthentication no"
REPLACE="PasswordAuthentication yes"
FILEPATH="/etc/ssh/sshd_config"
sudo sed -i "s;$SEARCH;$REPLACE;" $FILEPATH

# Restart the SSH service for change to take effect.
sudo service sshd restart

# Give the ansible user passwordless sudo
echo 'ansible ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo



SEARCH="PasswordAuthentication no"
REPLACE="PasswordAuthentication yes"
FILEPATH="/etc/ssh/sshd_config"
sudo sed -i "s;$SEARCH;$REPLACE;" $FILEPATH


