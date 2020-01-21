#!/bin/bash

echo ""
echo "Enter your username:"
read USERNAME
echo ""
echo "Enter your password:"
read PASSWORD
echo ""
STARTOFSCRIPT=`date`

echo "My login name is: $USERNAME"
echo "MY login password is: $PASSWORD"
echo "I started this script at: $STARTOFSCRIPT"
ENDOFSCRIPT=`date`
echo "I ended this script at:$ENDOFSCRIPT"
