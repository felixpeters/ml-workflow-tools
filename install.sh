#!/bin/bash
# create environment
conda create -n ml_workshop python=3.7
export PATH=/opt/conda/envs/ml_workshop/bin:$PATH
source activate ml_workshop

# set conda-forge as primary channel
conda config --env --add channels conda-forge
conda config --env --set channel_priority strict

# install packages
conda install pandas scikit-learn matplotlib notebook pyarrow lime

# save conda environment
conda env export > /config/environment_linux.yml
