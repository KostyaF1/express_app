#!bin/bash

#Export global variable.
export IMAGE_NAME

#Get list of images
CONTAINER_IDs=$(docker images -q $IMAGE_NAME)

#If there are more then 0 images - remove them
if [ "$CONTAINER_IDs" != "" ]
  then
    docker rmi -f $CONTAINER_IDs
fi


