#!/bin/bash

cd /root/mx-work
docker container prune
screen -S node-0 -d -m bash -c "sleep 5;node-0.sh"