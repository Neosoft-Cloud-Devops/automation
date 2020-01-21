#!/bin/bash


echo "Search the image which your are looking for:"
read search_image

echo "Enter the name of the image that you want to pull:"
read pull_image

echo "Enter the name of container:"
read container_name

echo "Enter port that you want to map to the docker host(eg:4960:80)"
read port

docker run --name $container_name -d -p $port -it $pull_image /bin/bash
