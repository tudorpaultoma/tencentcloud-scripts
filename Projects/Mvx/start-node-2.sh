#!/bin/bash

cd /root/mx-works
docker container prune --force
screen -S node-2 -d -m bash -c "sleep 5;./run-node-2.sh"