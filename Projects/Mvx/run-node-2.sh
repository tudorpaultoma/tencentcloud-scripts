#!/bin/bash

cd /root/mx-chain-observing-squad/
export SHARD=2
export DISPLAY_NAME="MyObservingSquad-2"
export OBSERVER_DIR=/root/MyObservingSquad/node-2/
export P2P_PORT=10002
export IP=10.0.0.4
./mainnet/run-observer.sh