#!/bin/bash


echo "Enter the tag name for dockerfile:"
read tag

docker build -t $tag .

docker images

echo "Enter the name of container:"
read container_name

echo "Enter port that you want to map to the docker host(eg:4960:80)"
read port

docker run --name $container_name -d -p $port -it $tag /bin/bash
#docker run --name $container_name -d -p $port -it --privileged $tag /usr/sbin/init /bin/bash

docker ps 



