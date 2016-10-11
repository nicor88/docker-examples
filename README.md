## Dependencies 
Install docker based on the OS

## Docker-machine
docker-machine create --driver virtualbox --virtualbox-memory 2048 --virtualbox-cpu-count=4 DOCKER-MACHINE-NAME
docker-machine ls
docker-machine env DOCKER-MACHINE-NAME
eval $(docker-machine env docker-dev)

docker-machine ssh DOCKER-MACHINE-NAME

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
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q)
