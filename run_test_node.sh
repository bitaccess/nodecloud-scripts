#!/bin/bash
sudo docker run --volumes-from=testcoin-data1 -v /home/node/testnet-conf/bitcoin.conf:/bitcoin/bitcoin.conf  -p 3000:3000 -p 18333:18333 testcorenode1
