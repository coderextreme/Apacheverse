#!/bin/bash
sudo docker rmi -f $(sudo docker images -aq)
sudo docker image rm `sudo docker ps | awk '{ print $1 }' |tail +2`
for container in `sudo docker ps | awk '{ print $1 }' |tail +2`
do
	sudo docker stop $container
done
