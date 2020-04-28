#/bin/bash

cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/northern-community/Northern/releases/download/3.2.1/northern_linux.3_3_1.tar.gz
tar -xzf northern_linux.3_3_1.tar.gz
rm -rf northern_linux.3_3_1.tar.gz
./northernd -daemon -resync
sleep 30
./northern-cli getinfo
