#!/bin/bash

wget https://nvidia.box.com/shared/static/yr6sjswn25z7oankw8zy1roow9cy5ur1.whl -O torch-1.6.0rc2-cp36-cp36m-linux_aarch64.whl
sudo apt-get install python3-pip libopenblas-base libopenmpi-dev
pip3 install Cython
pip3 install numpy torch-1.6.0rc2-cp36-cp36m-linux_aarch64.whl

sudo apt-get install libjpeg-dev zlib1g-dev
git clone --branch release/0.7 https://github.com/pytorch/vision torchvision   # see below for version of torchvision to download
cd torchvision
sudo python setup.py install
cd ../  # attempting to load torchvision from build dir will result in import error
#pip install 'pillow<7' # always needed for Python 2.7, not needed torchvision v0.5.0+ with Python 3.6
