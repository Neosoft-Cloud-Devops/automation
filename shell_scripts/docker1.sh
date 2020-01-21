#!/bin/bash

echo "Enter the tag name for docker image:"
read tag

docker build -t $tag .

docker run -d $tag 

docker ps


