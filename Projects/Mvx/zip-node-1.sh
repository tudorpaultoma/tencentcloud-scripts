#!/bin/bash

cd /root/mx-works
docker container stop squad-1
docker container prune --force

screen -S squad-1 -d -m bash -c 'sleep 5;tar -czvf /data/float/node-1.tgz -C /data/MyObservingSquad/cbs-1/node-1 db ;./run-node-1.sh'