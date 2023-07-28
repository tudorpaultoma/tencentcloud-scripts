#!/bin/bash

cd /root/mx-work
docker container prune
screen -S node-1 -d -m bash -c "sleep 5;node-1.sh"