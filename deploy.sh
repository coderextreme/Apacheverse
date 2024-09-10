#!/bin/bash
sudo docker buildx build --tag apacheverse . && sudo docker run -it apacheverse
# sudo docker exec -it 3382210d5d15 /bin/bash
