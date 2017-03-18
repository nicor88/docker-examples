## Build the image

<pre>docker build --rm=True --tag "nicor88/nodejs" . </pre>

## Run command inside the container

<pre># check node version
docker run --rm nicor88/nodejs node --version
# run node app
docker run -v $PWD/hello-node:/app --rm nicor88/nodejs  node /app/index.js
# install libs and save
docker run -v $PWD/hello-node:/app --rm nicor88/nodejs npm --prefix /app install --save express /app
</pre>
