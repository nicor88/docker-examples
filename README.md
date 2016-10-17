## Dependencies
Install docker based on the OS
* [Mac OSx](https://docs.docker.com/docker-for-mac/)
* [Linux](https://docs.docker.com/engine/installation/linux/)

## Run Docker (just for __boot2docker__)

Create a docker-machine:
<pre>
docker-machine create
  --driver virtualbox
  --virtualbox-memory 2048
  --virtualbox-cpu-count=4
  docker-dev
</pre>

Setup the environment:
<pre>
docker-machine env docker-dev
eval $(docker-machine env docker-dev)
</pre>

Login inside the machine:
<pre>
docker-machine ssh docker-dev
</pre>

## Push an Image to Docker-Hub
`docker push youruser/imageName`

## Utility commands Docker

List all Docker Images: `docker images`

Stop a container: `docker stop ContainerId`

Remove an Image: `docker rmi <imageid>`

Show running Containers: `docker ps`

Remove all the Images: __docker rmi -f `docker images -a -q`__

## Container cleanup

<pre>
# Stop all the containers
docker stop $(docker ps -a -q)
# Remove all the containers
docker rm $(docker ps -a -q)
</pre>

## Image cleanup
<pre>
# Stop all the containers
docker stop $(docker ps -a -q)
# Remove all the images
docker rmi $(docker images -a -q)
</pre>
