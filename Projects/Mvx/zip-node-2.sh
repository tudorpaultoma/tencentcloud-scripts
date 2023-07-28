#!/bin/bash

docker container stop squad-2
screen -S zipper -d -m "7za u -up0q3r2x2y2z1w2 -mx=1 -mmt=on /data/vdd/vdd1/node-2.7z /root/MyObservingSquad/node-2/db/"
./start-node-2.sh