#!/bin/bash

#X11
#xhost +local:root

#Mount Data folders
#sudo mount 192.168.0.15:/volume1/DL_data /DL_data
mkdir ~intflow/works

#Run Dockers for voice conversion (tf1 + pytorch)
sudo docker run --name l4t_deepstream_BT1 \
--net=host \
--runtime nvidia  \
-w /opt/nvidia/deepstream/deepstream-5.0 \
--mount type=bind,src=/home/intflow/works,dst=/works \
--privileged \
--ipc=host \
-it --rm intflow/deepstream:xnx_BT1

#--env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
#-v /tmp/.X11-unix/:/tmp/.X11-unix \
#-e DISPLAY=$DISPLAY \
#--privileged \
#--ipc=host \
#-it --rm nvcr.io/nvidia/deepstream-l4t:5.0-dp-20.04-samples
