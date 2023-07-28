#!/bin/bash

docker container stop squad-0
screen -S zipper -d -m "7za u -up0q3r2x2y2z1w2 -mx=1 -mmt=on /data/vdd/vdd1/node-0.7z /data/vdc/vdc1/node-0/db/"
./start-node-0.sh