FROM ubuntu:16.04

USER root

RUN apt-get update

RUN apt-get install -yq --no-install-recommends \
    git \
    wget \
    build-essential \
    python-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


# Setup Version ENV
ENV CARAVEL_VERSION 0.11.0

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
RUN conda install --quiet --yes \
    'conda-build' \
    'numpy=1.11.1' \
    'pandas=0.18.1'

# clean conda defualt environment
RUN conda clean -tipsy

WORKDIR /home/$APP_USER/
