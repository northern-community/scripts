#/bin/bash

cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/northern-community/Northern/releases/download/2.6.0/northern2.6.0.tar.gz
tar -xzf northern2.6.0.tar.gz
rm -rf northern2.6.0.tar.gz
./northernd -daemon
sleep 30
./northern-cli getinfo
