FROM ubuntu:16.04
MAINTAINER nicor88

RUN apt-get update
RUN apt-get install -y curl net-tools unzip bzip2 nmap

# Install Java
ENV JAVA_HOME /usr/jdk1.8.0_144
ENV PATH $PATH:$JAVA_HOME/bin
RUN curl -v -O -L -b \
  oraclelicense=accept-securebackup-cookie \
  "http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz"
RUN tar -zxvf jdk-8u144-linux-x64.tar.gz -C /usr
RUN java -version

RUN ln -s $JAVA_HOME /usr/java && rm -rf $JAVA_HOME/man


# Install Spark
ENV SPARK_VERSION 2.2.0
ENV HADOOP_VERSION 2.7
RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION spark
ENV SPARK_HOME /usr/local/spark
ENV PATH $PATH:$SPARK_HOME/bin

# Install conda

# Configure Miniconda
ENV MINICONDA_VER 4.3.21
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

# config conda
RUN conda config --set always_yes yes
RUN conda config -f --add channels conda-forge
RUN conda config -f --add channels defaults

# install conda libs
RUN conda install anaconda-client hdfs3 findspark ujson jsonschema toolz boto3 py4j
RUN conda install numpy pandas
RUN conda install jupyter

# install visualization libs
RUN conda install matplotlib plotly bokeh

RUN mkdir -p /notebooks
WORKDIR /notebooks

# copy jupyter configs
COPY conf/jupyter /root/.jupyter
