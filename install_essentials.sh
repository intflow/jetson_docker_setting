#!/bin/bash


#sudo apt-get install cmake
#sudo apt-get install python3-pip
#sudo pip3 install wget
#sudo pip3 install Cython

#sudo apt-get install libboost-all-dev
#sudo apt-get install python-numpy
#sudo apt-get install build-essential python-dev python-setuptools libboost-python-dev libboost-thread-dev

#wget https://files.pythonhosted.org/packages/5e/3f/5658c38579b41866ba21ee1b5020b8225cec86fe717e4b1c5c972de0a33c/pycuda-2019.1.2.tar.gz
#tar xzvf pycuda-2019.1.2.tar.gz
#cd pycuda-2019.1.2

#./configure.py
#make -j4
#sudo python3 setup.py install
#sudo pip3 install .

#wget http://releases.llvm.org/7.0.1/llvm-7.0.1.src.tar.xz
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-9.0.1/llvm-9.0.1.src.tar.xz
tar -xvf llvm-9.0.1.src.tar.xz
cd llvm-9.0.1.src
mkdir llvm_build_dir
cd llvm_build_dir/
cmake ../ -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD="ARM;X86;AArch64"
make -j4
sudo make install
cd bin/
echo "export LLVM_CONFIG=\""`pwd`"/llvm-config\"" >> ~/.bashrc
echo "alias llvm='"`pwd`"/llvm-lit'" >> ~/.bashrc
source ~/.bashrc
sudo pip3 install llvmlite

sudo pip3 install numba
