## Build the image

<pre>docker build --rm=True --tag "nicor88/nodejs"  --build-arg version=6.10.0 . </pre>

## Run command inside the container

<pre># enter in the container
docker run -v $PWD/hello-node:/app -it nicor88/nodejs
# check node version
docker run --rm nicor88/nodejs node --version
# run node app
docker run -v $PWD/hello-node:/app -it nicor88/nodejs  node /app/index.js
# install libs and save
docker run -v $PWD/hello-node:/app --rm nicor88/nodejs npm --prefix /app install --save express /app
</pre>
