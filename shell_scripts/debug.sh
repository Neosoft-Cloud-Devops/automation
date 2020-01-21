#!/bin/bash


echo "Enter a filename to read:"

#debug start
set -x

read FILE

while read -r SUPERHERO; do
   set +x
   echo "Superhero Name: $SUPERHERO"
   set -x
done < "$FILE"

#debug stop
set +x

