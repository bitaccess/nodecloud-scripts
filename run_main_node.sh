#!/bin/bash
sudo docker run --volumes-from=testcoin-data1 -p 3001:3001 -p 8333:8333 bitcorenode1
