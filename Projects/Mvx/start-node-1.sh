#!/bin/bash

cd /root/mx-works
docker container prune --force
screen -S node-1 -d -m bash -c 'sleep 5;./run-node-1.sh'