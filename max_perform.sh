#!/bin/bash 

sudo nvpmodel -m 2 # on Xavier NX, use -m 2  instead (15W 6-core mode)
sudo jetson_clocks

