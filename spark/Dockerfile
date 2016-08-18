FROM ubuntu:16.04
MAINTAINER nicor88

RUN apt-get update
RUN apt-get install -y curl net-tools unzip bzip2 nmap openssh-server

# Configure SSH
# RUN mkdir /var/run/sshd
# RUN echo 'root:screencast' | chpasswd
# RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
# RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
# ENV NOTVISIBLE "in users profile"
# RUN echo "export VISIBLE=now" >> /etc/profile
# EXPOSE 22
# CMD ["/usr/sbin/sshd", "-D"]

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
RUN curl -s http://d3kbcqa49mib13.cloudfront.net/spark-1.6.2-bin-hadoop2.6.tgz | tar -xz -C /usr/local/
RUN cd /usr/local && ln -s spark-1.6.2-bin-hadoop2.6 spark
ENV SPARK_HOME /usr/local/spark
ENV PATH $PATH:$SPARK_HOME/bin

#install conda
RUN curl -s https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh 
RUN bash miniconda.sh -b -p /opt/miniconda/
ENV PATH /opt/miniconda/bin:$PATH
RUN echo $PATH
RUN conda update conda
RUN conda install --yes anaconda-client jupyter

CMD /usr/local/spark/bin/spark-class org.apache.spark.deploy.master.Master
RUN jupyter notebook --ip 0.0.0.0 --port 9000 &> /dev/null &
EXPOSE 9000
