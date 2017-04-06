## Build Image
<pre>docker build --rm=True --tag "nicorc88/docker-spark:latest" .
</pre>

## Test commands in the Image
<pre>docker run --rm nicorc88/docker-spark:latest python --version
</pre>

## Run Spark with 2 workes
<pre>docker-compose up -d
</pre>

## Login inside the Container
<pre>
# show active containers
docker ps
# find the master container
docker exec -it ContainerIdMaster pyspakr
# run
</pre>
