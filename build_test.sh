#!/bin/bash
cd /home/node/bitcored-docker-test
git reset --hard
git pull
sudo docker build -t testcorenode1 .
