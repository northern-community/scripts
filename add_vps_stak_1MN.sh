cd ~
cd /usr/local/bin
./northern-cli stop
rm -rf northernd northern-cli northern-tx
wget https://github.com/northern-community/Northern/releases/download/2.6.2/northern_linux.2_6_2.tar.gz
tar -xzf northern_linux.2_6_2.tar.gz
rm -rf northern_linux.2_6_2.tar.gz
echo "staking=1" >> /home/northern/.northern/northern.conf
./northernd -daemon
./northern-cli -datadir=/home/northern/.northern getnewaddress
./northern-cli -datadit=/home/northern/.northern masternode debug
echo -e ${RED}"This is your VPS Staking wallet address for mn 1!"${NC}
sleep 30
./northern-cli getinfo
