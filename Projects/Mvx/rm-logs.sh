#!/bin/bash

find /data/MyObservingSquad/cbs-0/node-0/logs/ -mindepth 1 -mtime +0 -delete
find /data/MyObservingSquad/cbs-1/node-1/logs/ -mindepth 1 -mtime +0 -delete
find /data/MyObservingSquad/cbs-2/node-2/logs/ -mindepth 1 -mtime +0 -delete
find /data/MyObservingSquad/cbs-0/node-metachain/logs/ -mindepth 1 -mtime +0 -delete