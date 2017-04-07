## Build Image
<pre>docker build --rm=True --tag "nicorc88/docker-spark:latest" .
</pre>

## Test the builded Image
<pre># python version
docker run --rm nicorc88/docker-spark:latest python --version
</pre>

## Run Spark with 2 workes
<pre>docker-compose up -d
</pre>

## Start Pyspark with Jupyter
<pre># get containerId of Master Node
docker ps | grep master

# run Pyspark in the master
docker exec -it ContainerIdMaster pyspak
</pre>
