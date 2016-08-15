## Start docker-machine
docker-machine create --driver virtualbox --virtualbox-memory 2048 --virtualbox-cpu-count=4 docker
docker-machine env docker
eval $(docker-machine env docker)

## Utility commands
echo $(boot2docker ip)
docker-machine ls
docker images
docker ps
docker rmi <imageid>