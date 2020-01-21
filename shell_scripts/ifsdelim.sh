#!/bin/bash

echo "Enter filename to parse:"
read FILE

echo "Enter the delimiter:"
read DELIM

IFS="$DELIM"

while read -r CPU MEMORY DISK
do 
  echo "CPU: $CPU"
  echo "Memory: $MEMORY"
  echo "Disk: $DISK"
done <"$FILE"
