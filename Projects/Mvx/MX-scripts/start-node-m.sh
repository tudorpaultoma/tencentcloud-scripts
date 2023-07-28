#!/bin/bash

cd /root/mx-work
docker container prune
screen -S node-m -d -m bash -c "sleep 5;node-m.sh"