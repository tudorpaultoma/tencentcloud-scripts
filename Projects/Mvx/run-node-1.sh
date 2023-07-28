#!/bin/bash

cd /root/mx-chain-observing-squad/
export SHARD=1
export DISPLAY_NAME="MyObservingSquad-1"
export OBSERVER_DIR=/data/vdb/vdb1/node-1/
export P2P_PORT=10001
export IP=10.0.0.5
./mainnet/run-observer.sh
