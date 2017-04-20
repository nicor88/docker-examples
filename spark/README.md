## Build Image
<pre>docker build --rm=True --tag "nicorc88/docker-spark:latest" .
</pre>

## Test the builded Image
<pre># python version
docker run --rm nicorc88/docker-spark:latest python --version
</pre>

## Start Spark with 2 nodes
<pre># star docker compose
docker-compose up -d
# get containerId of Master Node
docker ps | grep master
# enter inside the master node
docker exec -it ContainerIdMaster /bin/bash
# run pyspark with interactive console
>>> pyspark
# run jupyter notebook
docker exec -it ContainerIdMaster jupyter notebook --log-level=INFO --allow-root
# it is possible to use spark using findspark lib
</pre>

## Start Pyspark with Jupyter
<pre># start docker with compose
docker-compose -f docker-compose-spark-jupyter.yml up -d
# get containerId of Master Node
docker ps | grep master
# run Pyspark with Jupyter in the master
docker exec -it ContainerIdMaster pyspak
# shutdown
docker-compose -f docker-compose-spark-jupyter.yml down
</pre>
