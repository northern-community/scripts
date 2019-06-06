#/bin/bash

cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/northern-community/Northern/releases/download/2.6.1/northern_linux.2_6_1.tar.gz
tar -xzf northern_linux.2_6_1.tar.gz
rm -rf northern_linux.2_6_1.tar.gz
./northernd -daemon
sleep 30
./northern-cli getinfo
