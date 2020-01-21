#!/bin/bash

echo "Enter the directory name which you want to create:"
read name

if [ -d "$num" ]
then
echo "This directory name already exists."
else
`mkdir $name`
echo "$name Directory creadted successfully."
fi

