## Build Image
docker build --rm=True --tag "docker-spark:1.6.2" .

## Login into the image 

docker run -it -p 8088:8088 -p 8042:8042 -p 4040:4040 -h 192.168.99.101 docker-spark:1.6.2 bash

## Start Small Cluster
docker-machine start docker-dev
docker-compose up
docker ps 
docker exec -it ContainerId /bin/sh
