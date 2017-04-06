## Build Image
<pre>docker build --rm=True --tag "nicorc88/docker-spark:latest" .
</pre>

## Run the Container
<pre>docker run -it -p 8088:8088 -p 8042:8042 -p 4040:4040 docker-spark:latest
</pre>

## Login inside the Container
<pre># show active containers
docker ps
# exec a command against a container
docker exec -it ContainerId /bin/sh
