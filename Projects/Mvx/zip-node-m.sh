#!/bin/bash

docker container stop squad-metachain
screen -S zipper -d -m "7za u -up0q3r2x2y2z1w2 -mx=1 -mmt=on /data/vdd/vdd1/node-metachain.7z /data/vdc/vdc1/node-metachain/db/"
./start-node-m.sh