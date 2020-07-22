#!/bin/bash

#X11
#xhost +local:root

#Mount Data folders
#sudo mount 192.168.0.15:/volume1/DL_data /DL_data
mkdir ~intflow/works

#Run Dockers for Jetson Deepstream 5
sudo docker run --name l4t_nano_cam \
--net=host \
--privileged \
--ipc=host \
--runtime nvidia  \
-w /opt/nvidia/deepstream/deepstream-5.0 \
--mount type=bind,src=/home/intflow/works,dst=/works \
--privileged \
--ipc=host \
-it --rm intflow/deepstream:nano_cam

#-it --rm nvcr.io/nvidia/deepstream-l4t:5.0-dp-20.04-samples

#--env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
#-v /tmp/.X11-unix/:/tmp/.X11-unix \
#-e DISPLAY=$DISPLAY \
