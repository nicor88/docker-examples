## Build Image
<pre>docker build --rm=True --tag "nicorc88/docker-spark:latest" .
</pre>

## Test the builded Image
<pre># python version
docker run --rm nicorc88/docker-spark:latest python --version
</pre>

## Start Pyspark with Jupyter
<pre># start docker with compose
docker-compose -f docker-compose-spark-jupyter.yml up -d
# get containerId of Master Node
docker ps | grep master
# run Pyspark with Jupyter in the master
docker exec -it ContainerIdMaster pyspak
</pre>
