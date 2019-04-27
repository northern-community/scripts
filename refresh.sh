#/bin/bash

cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/northern-community/Northern/raw/c35f59dd79c6173e495f08b319dd5518f4b74a61/northern-cli.tar.gz
tar -xzf northern-cli.tar.gz
rm -rf https://github.com/northern-community/Northern/raw/c35f59dd79c6173e495f08b319dd5518f4b74a61/northern-cli.tar.gz
./northernd -daemon
sleep 30
./northern-cli getinfo
