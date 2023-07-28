#!/bin/bash

dhobs="https://registry.hub.docker.com/v2/repositories/multiversx/chain-observer/tags"
dhpro="https://registry.hub.docker.com/v2/repositories/multiversx/chain-proxy/tags"
latobs=`curl -s -S $dhobs | jq '."results"[]["name"]' | sed -n '2p' | tr -d '"'`
latpro=`curl -s -S $dhpro | jq '."results"[]["name"]' | sed -n '2p' | tr -d '"'`

docker image rm multiversx/chain-observer:$latobs
docker image rm multiversx/chain-squad-proxy:$latpro