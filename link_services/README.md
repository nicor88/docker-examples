# Link Services

## Build Conda Image
<pre>docker build --rm=True --tag "nicor88/conda:latest" -f DockerfileConda .
</pre>

## Utils
<pre>
docker ps | grep app
# Force docker to rebuild the image and recreate the containers
docker-compose up --force-recreate  --build
</pre>