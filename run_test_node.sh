#!/bin/bash
sudo docker run --volumes-from=testcoin-data1 -v /home/node/testnet-conf/bitcoin.conf:/bitcoin/bitcoin.conf  -p 127.0.0.1:3000:3000 -p 127.0.0.1:18333:18333 testcorenode1
