#!/bin/bash


echo "Search the which docker images are available for this:"
read search_images_available
docker search $search_images_available

echo "Enter the name of image which you want to pull from dockerhub:"
read pull_image_name
docker pull $pull_image_name


docker images

docker run -d $pull_image_name /bin/bash
docker ps


#docker ps -a

#echo "Enter the container id that you want to start:"
#read cont_id

#docker start $cont_id

#docker ps

#echo "Enter the container id that you want to attach to shell:"
#read cont_att_id

#docker attach $cont_att_id

