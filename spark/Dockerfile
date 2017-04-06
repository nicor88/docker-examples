FROM ubuntu:16.04
MAINTAINER nicor88

RUN apt-get update
RUN apt-get install -y curl net-tools unzip bzip2 nmap

# Install Java
ENV JAVA_HOME /usr/jdk1.8.0_101
ENV PATH $PATH:$JAVA_HOME/bin
RUN curl -sL --retry 3 --insecure \
  --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
  "http://download.oracle.com/otn-pub/java/jdk/8u101-b13/server-jre-8u101-linux-x64.tar.gz" \
  | gunzip \
  | tar x -C /usr/ \
  && ln -s $JAVA_HOME /usr/java \
  && rm -rf $JAVA_HOME/man


# Install Spark
#RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.6.2-bin-hadoop2.6.tgz | tar -xz -C /usr/local/
RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s spark-2.1.0-bin-hadoop2.7 spark
ENV SPARK_HOME /usr/local/spark
ENV PATH $PATH:$SPARK_HOME/bin

# Install conda

# Configure Miniconda
ENV MINICONDA_VER 4.2.12
ENV MINICONDA Miniconda3-$MINICONDA_VER-Linux-x86_64.sh
ENV MINICONDA_URL https://repo.continuum.io/miniconda/$MINICONDA
ENV CONDA_DIR /opt/miniconda

WORKDIR /tmp
RUN curl -L $MINICONDA_URL  -o miniconda.sh
RUN echo $CONDA_DIR
RUN bash miniconda.sh -b -p $CONDA_DIR
RUN rm /tmp/miniconda.sh
RUN $CONDA_DIR/bin/conda install --yes conda==$MINICONDA_VER

# setup conda in the env
ENV PATH $CONDA_DIR/bin:$PATH

RUN conda config --set always_yes yes
RUN conda install anaconda-client jupyter

RUN mkdir -p /notebooks

# copy jupyter configs
COPY conf/jupyter /root/.jupyter
