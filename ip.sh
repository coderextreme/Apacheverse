#!/bin/bash
# sudo docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' apacheverse
for container in `sudo docker ps | awk '{ print $1 }' |tail +2`
do
	URL=http://`sudo docker exec -it $container hostname -i`/
	echo loading "$URL"
	 firefox $URL || chromium-browser $URL
done
