#!/bin/bash

cd /root/mx-works
docker container stop squad-2
docker container prune --force

screen -S squad-2 -d -m bash -c 'sleep 5;tar -czvf /data/float/node-2.tgz -C /data/MyObservingSquad/cbs-2/node-2 db ;./run-node-2.sh'