#!/bin/bash

cd /root/mx-works
docker container prune --force
screen -S proxy -d -m bash -c 'sleep 5;./run-proxy.sh'