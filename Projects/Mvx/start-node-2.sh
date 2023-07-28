#!/bin/bash

cd /root/mx-work
docker container prune
screen -S node-2 -d -m bash -c "sleep 5;node-2.sh"