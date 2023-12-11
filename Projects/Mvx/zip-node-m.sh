#!/bin/bash

cd /root/mx-works
docker container stop squad-metachain
docker container prune --force

screen -S squad-metachain -d -m bash -c 'sleep 5;tar -czvf /data/float/node-metachain.tgz -C /data/MyObservingSquad/cbs-0/node-metachain db ;./run-node-m.sh'