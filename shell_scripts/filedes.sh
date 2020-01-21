#!/bin/bash

echo "Enter a file name to read: "
read FILE

exec 5<>$FILE  #open the file descriptor for read and write

while read -r SUPERHERO
do
  echo "Superhero Name: $SUPERHERO"
done <&5   #redirect the file input into while loop

echo "File was read on: `date`" >&5

exec 5>&-     #close all the connections with file descritor
