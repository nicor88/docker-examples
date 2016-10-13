## Build the image

`docker build --rm=True --tag "nicor88/spark-jupyter" . `  

## Create a Docker Machine
`docker-machine create --driver virtualbox --virtualbox-memory 2048 --virtualbox-cpu-count=4 docker-dev`

## Run Docker
`docker-machine start docker-dev`

`docker-machine env docker-dev`

`eval $(docker-machine env docker-dev)`

## Run the Container
`docker-compose up`

## Connect to Jupyter
1. Get the ip of the machine where is running the container: `docker-machine ip docker-dev `
2. Connect to http://docker-dev-ip:8888

## Links

* https://github.com/jupyter/docker-stacks/blob/master/minimal-notebook/Dockerfile
* https://github.com/jupyter/docker-stacks/blob/master/scipy-notebook/Dockerfile
* https://github.com/jupyter/docker-stacks/blob/master/pyspark-notebook/Dockerfile
* https://github.com/jupyter/docker-stacks/blob/master/all-spark-notebook/Dockerfile