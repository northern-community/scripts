cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/northern-community/Northern/releases/download/3.3.1/northern_linux.3_3_1.tar.gz
tar -xzf northern_linux.3_3_1.tar.gz
rm -rf northern_linux.3_3_1.tar.gz
echo "staking=1" >> /home/northern/.northern/northern.conf
./northernd -daemon -resync
./northern-cli -datadir=/home/northern/.northern getnewaddress
./northern-cli -datadir=/home/northern/.northern masternode debug
echo -e ${RED}"This is your VPS Staking wallet address for mn 1!"${NC}
sleep 30
./northern-cli getinfo
