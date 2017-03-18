FROM ubuntu:16.04
MAINTAINER nicor88

ENV NODE_VERSION 6.10.0

RUN apt-get update
RUN apt-get install -y curl sudo unzip bzip2
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install -g n
RUN n $NODE_VERSION

RUN mkdir /app
WORKDIR /app
