## Build the image

<pre>docker build --rm=True --tag "nicor88/conda" . </pre>

## Run command inside the container

<pre>docker run --rm nicor88/conda python -c 'print("Hello World")'
docker run --rm nicor88/conda python --version
</pre>
