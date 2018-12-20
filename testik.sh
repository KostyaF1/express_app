#!bin/bash

export IMAGE_NAME

CONTAINER_IDs=$(docker images -q $IMAGE_NAME)

if [ "$CONTAINER_IDs" != "" ]
  then
    docker rmi $CONTAINER_IDs
fi


