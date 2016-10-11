## Build the image

docker build --rm=True --tag "spark-jupyter" .
docker build --rm=True --tag "nico88/spark-jupyter:0.0.1" .  

## Setup
docker-machine create --driver virtualbox --virtualbox-memory 2048 --virtualbox-cpu-count=4 docker-dev
If the docker machine is not on run: docker-machine start docker-dev
docker-machine env docker-dev
eval $(docker-machine env docker-dev)

## Run the Container
docker-compose up

## Links

* https://github.com/jupyter/docker-stacks/blob/master/minimal-notebook/Dockerfile
* https://github.com/jupyter/docker-stacks/blob/master/scipy-notebook/Dockerfile
* https://github.com/jupyter/docker-stacks/blob/master/pyspark-notebook/Dockerfile
* https://github.com/jupyter/docker-stacks/blob/master/all-spark-notebook/Dockerfile