#!bin/bash

#Export global variable.
export IMAGE_NAME

#Get list of containers
CONTAINER_IDs=$(docker ps -aq)

#Get list of images
IMAGE_IDs=$(docker images -q $IMAGE_NAME)

#If there are more then 0 images - remove them
if [ "$CONTAINER_IDs" != "" ]
  then
    docker stop $CONTAINER_IDs
    docker rm $CONTAINER_IDs
    docker rmi -f $IMAGE_IDs
fi


