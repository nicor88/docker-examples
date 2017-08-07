#!/bin/bash
set -ex

conda install -y numpy

echo $CONDA_DIR

SITE_PACKAGES="$CONDA_DIR/lib/python3.6/site-packages"

cp -R $SITE_PACKAGES/numpy /outputs/build_dir

cp $CONDA_DIR/lib/*.so /outputs/build_dir
