#!/bin/bash

cd /root/mx-works
docker container prune --force
screen -S node-m -d -m bash -c 'sleep 5;./run-node-m.sh'