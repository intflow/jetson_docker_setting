#!/bin/bash

# Create a swapfile for Ubuntu in your home (or anywhere..)
fallocate -l 3G swapfile
# Change permissions so that only root can use it
chmod 600 swapfile
# Set up the Linux swap area
mkswap swapfile
# Now start using the swapfile
sudo swapon swapfile
# Show that it’s now being used
swapon -s
# htop is good utility to track CPU / Memory usage
#htop


