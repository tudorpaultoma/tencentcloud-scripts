#!/bin/bash


cd /root/mx-works/
./mx-pull-image.sh
sleep 5

cd /root/mx-chain-observing-squad/
git pull origin

docker container stop squad-0
sleep 2
docker container stop squad-1
sleep 2
docker container stop squad-2
sleep 2
docker container stop squad-metachain
sleep 2
docker container stop proxy
sleep 2

docker container prune -f


cd /root/mx-works/
./mx-rm-image.sh
sleep 2

docker network rm multiversx-squad
docker network create --subnet=10.0.0.0/24 multiversx-squad

cd /root/mx-works/
./start-node-0.sh
./start-node-1.sh
./start-node-2.sh
./start-node-m.sh
./start-proxy.sh



