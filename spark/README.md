## Build Image
<pre>
docker build --rm=True --tag "docker-spark:1.6.2" .
</pre>

## Run the Container
<pre>
docker run -it -p 8088:8088 -p 8042:8042 -p 4040:4040 docker-spark:1.6.2
</pre>

## Login inside the Container
1. Get the containerId: `docker ps `
2. Run `docker exec -it ContainerId /bin/sh`
