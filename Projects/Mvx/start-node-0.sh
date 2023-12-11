#!/bin/bash

cd /root/mx-works
docker container prune --force
screen -S node-0 -d -m bash -c 'sleep 5; ./run-node-0.sh'