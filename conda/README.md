## Build the image

<pre>docker build --rm=True --tag "nicor88/conda" . </pre>

## Run command inside the container

<pre>docker run --rm nicor88/conda python -c 'print("Hello World")'
docker run --rm nicor88/conda python --version
docker run -v $PWD/src:/src --rm nicor88/conda  python /src/hello.py
</pre>
