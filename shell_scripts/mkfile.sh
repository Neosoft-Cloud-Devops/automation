#!/bin/bash

echo "The file name which you want to create:"
read nameoffile

if [ -f "$nameoffile" ]
then
echo "The file with same name already exists."
else
`touch $nameoffile`
echo "The $nameoffile file created successfully."
fi
