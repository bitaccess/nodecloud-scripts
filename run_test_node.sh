#!/bin/bash
sudo docker run --volumes-from=testcoin-data1 -p 3000:3000 -p 18333:18333 testcorenode1
