#!/bin/bash

cd /root/mx-works
docker container stop squad-0
docker container prune --force

screen -S squad-0 -d -m bash -c 'sleep 5;tar -czvf /data/float/node-0.tgz -C /data/MyObservingSquad/cbs-0/node-0 db ;./run-node-0.sh'