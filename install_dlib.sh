#!/bin/bash


#install cudnn inside docker image
cp cudnn.tar /usr/include/aarch64-linux-gnu
cd /usr/include/aarch64-linux-gnu
tar -xvf cudnn.tar
cd /works/jetson_docker_setting

git clone https://github.com/davisking/dlib.git
cd dlib
mkdir build; cd build; 
cmake .. -DCUDA_HOST_COMPILER=/usr/bin/gcc -DCMAKE_PREFIX_PATH=/usr/lib/aarch64-linux-gnu/ -DDLIB_USE_CUDA=1 -DUSE_AVX_INSTRUCTIONS=1 -DUSE_F16C=1
sudo python3 setup.py install
