cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/northern-community/Northern/raw/c35f59dd79c6173e495f08b319dd5518f4b74a61/northern-cli.tar.gz
tar -xzf northern-cli.tar.gz
rm -rf northern-cli.tar.gz
echo "staking=1" >> /home/northern/.northern/northern.conf
./northernd -daemon
./northern-cli -datadir=/home/northern/.northern getnewaddress
./northern-cli -datadit=/home/northern/.northern masternode debug
echo -e ${RED}"This is your VPS Staking wallet address for mn 1!"${NC}
sleep 30
./northern-cli getinfo
