#!/bin/bash

# Docker for WSL
# enable docker daemon
# sudo systemctl enable docker
sudo cgroupfs-mount && sudo service docker start