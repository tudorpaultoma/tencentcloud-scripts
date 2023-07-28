#!/bin/bash

cd /root
docker container prune
screen -S node-0 -d -m bash -c "sleep 5;proxy.sh"