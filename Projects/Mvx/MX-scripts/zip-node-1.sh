#!/bin/bash

docker container stop squad-1
screen -S zipper -d -m "7za u -up0q3r2x2y2z1w2 -mx=1 -mmt=on /data/vdd/vdd1/node-1.7z /data/vdb/vdb1/node-1/db/"
./start-node-1.sh