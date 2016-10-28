FROM ubuntu:16.04

# Setup ENV Variables
ENV OS_VERSION Ubuntu 16.04
ENV CARAVEL_VERSION 0.11.0

RUN echo "OS Version:" $OS_VERSION

RUN apt-get update

RUN apt-get install -yq --no-install-recommends \
    git \
    build-essential
