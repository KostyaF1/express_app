#!bin/bash

a=$(docker images -q kostyaf1/hello-task7)

if [ "$a" != "" ] 
  then
   # docker stop task_7; docker rm task_7 
    docker rmi $a 
fi


