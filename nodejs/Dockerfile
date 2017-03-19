FROM ubuntu:16.04
MAINTAINER nicor88

ARG version
ENV NODE_VERSION ${version}

RUN apt-get update
RUN apt-get install -y curl unzip bzip2
RUN apt-get install -y npm
RUN npm install -g n
RUN n $NODE_VERSION
# point nodejs and node to the same version
RUN rm /usr/bin/nodejs
RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs

RUN mkdir /app
WORKDIR /app
