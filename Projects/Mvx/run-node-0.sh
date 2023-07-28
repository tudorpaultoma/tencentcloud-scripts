#!/bin/bash

cd /root/mx-chain-observing-squad/
export SHARD=0
export DISPLAY_NAME="MyObservingSquad-0"
export OBSERVER_DIR=/data/vdc/vdc1/node-0/
export P2P_PORT=10000
export IP=10.0.0.6
./mainnet/run-observer.sh