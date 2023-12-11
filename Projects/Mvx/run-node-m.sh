#!/bin/bash

cd /root/mx-chain-observing-squad/
export SHARD=metachain
export DISPLAY_NAME="MyObservingSquad-metachain"
export OBSERVER_DIR=/data/MyObservingSquad/cbs-0/node-metachain/
export P2P_PORT=10003
export IP=10.0.0.3
./mainnet/run-observer.sh