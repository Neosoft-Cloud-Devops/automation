#!/bin/bash


if [ -f /etc/redhat-release ]; then
  sudo yum update
fi

if [ -f /etc/lsb-release ]; then
  sudo apt-get update
fi
