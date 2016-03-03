#!/bin/bash
sudo docker run --volumes-from=bitcoin-data1 -t -i ubuntu:14.04 /bin/bash
