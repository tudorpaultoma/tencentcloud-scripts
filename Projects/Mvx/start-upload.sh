#!/bin/bash

cd /root/mx-works
screen -S zip-upload -d -m bash -c 'sleep 5;./mx-upload.sh'