#!/bin/bash

echo "Enter the filename which you want to delete:"
read name
if [ -f "$name" ]
then
`rm -i $name`
else
echo "file doesn't exists."
fi
