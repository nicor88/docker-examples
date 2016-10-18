## Build the image

`docker build --rm=True --tag "nicor88/spark-jupyter" . `  

## Run the Container

To run the container with the output: `docker-compose up`

To run the container without the output: `docker-compose up -d`

## Connect to Jupyter
1.  Get the containerId: `docker ps `
2.  Get the ip of the container: `docker inspect CONTAINER_ID `
2.  Connect to [http://CONTAINER_IP:8888]()

## Links
*   [minimal-notebook](https://github.com/jupyter/docker-stacks/blob/master/minimal-notebook/Dockerfile)
*   [scipy-notebook](https://github.com/jupyter/docker-stacks/blob/master/scipy-notebook/Dockerfile)
*   [pyspark-notebook](https://github.com/jupyter/docker-stacks/blob/master/pyspark-notebook/Dockerfile)
*   [all-spark-notebook](https://github.com/jupyter/docker-stacks/blob/master/all-spark-notebook/Dockerfile)
