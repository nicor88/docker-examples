# gophernotes
__gophernotes__ is a Go kernel for Jupyter notebooks

## Dependencies

*   Docker


## Getting Start
Run gophernotes
<pre>
docker pull dwhitena/gophernotes:latest

docker run -p 8888:8888 -d dwhitena/gophernotes jupyter notebook --no-browser --ip=0.0.0.0
</pre>


Build a container with sample notebooks in notebooks folder
<pre>
# build the docker image
docker build --rm=True --tag "nicor88/go-jupyter:latest" .
docker-compose up
</pre>

The notebook is available at port 9000
