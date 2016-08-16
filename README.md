## Utility commands Docker
docker images
docker ps
docker rmi <imageid>
docker rmi -f `docker images -a -q`

## docker-machine commands
docker-machine ls

docker-machine create --driver virtualbox --virtualbox-memory 2048 --virtualbox-cpu-count=4 DOCKER-MACHINE-NAME
docker-machine env DOCKER-MACHINE-NAME
eval $(docker-machine env docker-dev)

docker-machine ssh DOCKER-MACHINE-NAME
