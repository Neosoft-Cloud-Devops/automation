#!/bin/bash

echo "Enter Your First Name:"
read FIRSTNAME
echo "Enter Your Last Name:"
read LASTNAME

echo ""
echo "Your Full Name is: $FIRSTNAME $LASTNAME"
echo ""
echo "Enter Your Age:"
read AGE
echo "In 10 Years, You will be `expr $AGE + 10` years of old"
