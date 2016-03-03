#!/bin/bash
cd /home/node/bitcored-docker
git reset --hard
git pull
sudo docker build -t bitcorenode1 .
