## Run the Container
docker-machine create --driver virtualbox --virtualbox-memory 2048 --virtualbox-cpu-count=4 docker-dev
docker-machine env docker-dev
eval $(docker-machine env docker-dev)
docker-compose up

## Links

* https://github.com/jupyter/docker-stacks

* https://github.com/jupyter/docker-stacks/blob/master/pyspark-notebook/Dockerfile
* https://github.com/jupyter/docker-stacks/blob/master/scipy-notebook/Dockerfile

* https://github.com/jupyter/docker-stacks/blob/master/scipy-notebook/Dockerfile

**TODO**

Create a Dockerfile based on pyspark-notebook and scipy-notebook