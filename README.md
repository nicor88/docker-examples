## Dependencies
Install docker based on the OS
*   [Mac OSx](https://docs.docker.com/docker-for-mac/)
*   [Linux](https://docs.docker.com/engine/installation/linux/)

## Run Docker (just for __boot2docker__)

Create a docker-machine:
<pre>docker-machine create
  --driver virtualbox
  --virtualbox-memory 2048
  --virtualbox-cpu-count=4
  docker-dev
</pre>

Setup the environment:
<pre>docker-machine env docker-dev
eval $(docker-machine env docker-dev)
</pre>

Login inside the machine:
<pre>docker-machine ssh docker-dev
</pre>

## Run an Image in a ContainerId
<pre>#Using Image Name
docker run -it imageName:imageVersion /bin/bash
#Using ContainerId
docker run -it containerId /bin/bash
</pre>

## Push an Image to Docker-Hub
<pre># Login to DockerHub
docker login
# push the builded image
docker push yourUser/imageName
</pre>

## Utility commands Docker

### Containers Utility
Show running Containers: `docker ps`
Show all the containers (also the ones not running): `docker ps -a`
Get Container Infos: `docker inspect ContainerId`
Stop a container: `docker stop ContainerId`

### Images Utility
List all Docker Images: `docker images`
Remove an Image: `docker rmi <imageid>`

### Cleanup
<pre># Stop all the containers
docker stop $(docker ps -a -q)
# Remove all the containers
docker rm $(docker ps -a -q)
# Remove all the images
docker rmi $(docker images -a -q)
</pre>
