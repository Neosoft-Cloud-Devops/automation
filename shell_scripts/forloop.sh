#!/bin/bash


echo "List all the shell scripts contents of the directory"

SHELLSCRIPTS=`ls *.sh`

for script in "$SHELLSCRIPTS"
   do 
      DISPLAY="`cat $script`"	   
      echo "File: $script - Contents $DISPLAY"
done
