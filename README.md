## Dependencies
Install docker based on the OS
* [Mac OSx](https://docs.docker.com/docker-for-mac/)
* [Linux]()

## Docker-machine
Follow this commands if you are running __boot2docker__

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

## Utility commands Docker

docker images

docker ps

docker rmi <imageid>

docker rmi -f `docker images -a -q`

## Container cleanup

docker stop $(docker ps -a -q)

docker rm $(docker ps -a -q)

## Image cleanup

docker stop $(docker ps -a -q)

docker rmi $(docker images -a -q)
