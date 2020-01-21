#!/bin/bash

echo "Enter the number of times to display 'Priyanka'"
read DISPLAYNUMBER

count=1

while [ $count -le $DISPLAYNUMBER ]
do
    echo "Priyanka - $count"
    count="`expr $count + 1`"
done
