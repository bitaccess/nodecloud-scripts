#!/bin/bash
sudo docker run --name=bitcoin-data1 -v /bitcoin busybox chown 1000:1000 /bitcoin
