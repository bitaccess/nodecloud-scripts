#!/bin/bash
sudo docker run --volumes-from=bitcoin-data1 -v /home/node/mainnet-conf/bitcoin.conf:/bitcoin/bitcoin.conf  -p 3001:3001 -p 8333:8333 bitcorenode1
