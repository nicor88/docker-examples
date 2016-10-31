FROM ubuntu:16.04

USER root

RUN apt-get update

RUN apt-get install -yq --no-install-recommends \
    gcc \
    g++ \
    sudo \
    git \
    wget \
    build-essential \
    python-setuptools \
    libffi-dev \
    libsasl2-dev \
    libldap2-dev \
    libssl-dev \
    python-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

#RUN wget --quiet -O- https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/pgdg.list

RUN apt-get update

# Install OS related dependencies for DB

#Postgres
RUN apt-get install -yq --no-install-recommends \
    postgresql-9.5 \
    postgresql-server-dev-9.5 \
    postgresql-client-9.5 \
    postgresql-contrib-9.5 \
    libmysqlclient-dev


# Setup Version ENV
ENV CARAVEL_VERSION 0.11.0
ENV CARAVEL_HOME /home/caravel
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

ENV CONDA_DIR /opt/conda
ENV PATH $CONDA_DIR/bin:$PATH
ENV APP_USER caravel

# Add user
RUN useradd -m -s /bin/bash -N $APP_USER && \
    mkdir -p $CONDA_DIR && \
    chown $APP_USER $CONDA_DIR

USER $APP_USER
RUN mkdir -p $CONDA_DIR

# Install conda
WORKDIR /tmp
# Download Miniconda in /tmp folder
RUN wget --no-check-certificate "https://repo.continuum.io/miniconda/Miniconda3-4.2.11-Linux-x86_64.sh"
# Install Miniconda3 in $CONDA_DIR
RUN /bin/bash Miniconda3-4.2.11-Linux-x86_64.sh -f -b -p $CONDA_DIR
RUN rm Miniconda3-4.2.11-Linux-x86_64.sh
RUN $CONDA_DIR/bin/conda install --quiet --yes conda==4.2.11
RUN $CONDA_DIR/bin/conda config --system --add channels conda-forge
RUN $CONDA_DIR/bin/conda config --system --set auto_update_conda false

# Install Conda packages
RUN conda install --yes \
    'conda-build' \
    'numpy=1.11.1' \
    'pandas=0.18.1' \
    'cython=0.24.1'

# clean conda defualt environment
RUN conda clean -tipsy

# Install DB dependencies
RUN pip install psycopg2==2.6.1 \
                redis==2.10.5 \
                sqlalchemy-redshift==0.5.0 \
                mysqlclient==1.3.7

# Install caravel

RUN pip install caravel==$CARAVEL_VERSION

COPY setup $CARAVEL_HOME
#ENV PATH=$PATH:/home/caravel/.bin
ENV PYTHONPATH=$CARAVEL_HOME/caravel_config.py:$PYTHONPATH

WORKDIR $CARAVEL_HOME

# Create an admin user
RUN fabmanager create-admin --app caravel < admin.config

# Initialize the database
RUN caravel db upgrade

# Create default roles and permissions
RUN caravel init

# Load some data to play with
RUN caravel load_examples

EXPOSE 8088

HEALTHCHECK CMD ["curl", "-f", "http://localhost:8088/health"]
ENTRYPOINT ["caravel"]
CMD ["runserver"]

# USER root
