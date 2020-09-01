#!/bin/bash

git clone --recursive https://github.com/apache/incubator-mxnet.git mxnet
git clone --recursive -b v1.6.x https://github.com/apache/incubator-mxnet.git mxnet

export PATH=/usr/local/cuda/bin:$PATH
export MXNET_HOME=/works/jetson_docker_setting/mxnet/
export PYTHONPATH=$MXNET_HOME/python:$PYTHONPATH

source .profile

cd $MXNET_HOME
make -j $(nproc)
cd $MXNET_HOME/python
sudo pip3 install -e .
cd $MXNET_HOME/scala-package
mvn install
