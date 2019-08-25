#!/bin/bash

#Setup Variables
GREEN='\033[0;32m'
YELLOW='\033[0;93m'
RED='\033[0;31m'
NC='\033[0m'

echo -e ${YELLOW}"Welcome to the Northern Automated Update 2.6.1 (6in1)."${NC}
echo "Please wait while updates are performed..."
sleep 5
echo "Stopping first node, please wait...";
northern-cli -datadir=/home/northern/.northern stop
echo "Stopping second node, please wait...";
northern-cli -datadir=/home/northern2/.northern stop
echo "Stopping third node, please wait...";
northern-cli -datadir=/home/northern3/.northern stop
echo "Stopping fourth node, please wait...";
northern-cli -datadir=/home/northern4/.northern stop
echo "Stopping 5th node, please wait...";
northern-cli -datadir=/home/northern5/.northern stop
echo "Stopping 6th node, please wait...";
northern-cli -datadir=/home/northern6/.northern stop
echo "Stopping 7th node, please wait...";
northern-cli -datadir=/home/northern7/.northern stop
echo "Stopping 8th node, please wait...";
northern-cli -datadir=/home/northern8/.northern stop
sleep 10
echo "Removing binaries..."
cd /usr/local/bin
rm -rf northernd northern-cli northern-tx
echo "Downloading latest binaries"
wget https://github.com/northern-community/Northern/releases/download/2.6.1/northern_linux.2_6_1.tar.gz
tar -xzf northern_linux.2_6_1.tar.gz
sudo chmod 755 -R  /usr/local/bin/northern*
rm -rf northern-cli.tar.gz
echo "Deleting old nodes from node config files"
sed -i '/addnode/d' /home/northern/.northern/northern.conf
sed -i '/addnode/d' /home/northern2/.northern/northern.conf
sed -i '/addnode/d' /home/northern3/.northern/northern.conf
sed -i '/addnode/d' /home/northern4/.northern/northern.conf
sed -i '/addnode/d' /home/northern5/.northern/northern.conf
sed -i '/addnode/d' /home/northern6/.northern/northern.conf
sed -i '/addnode/d' /home/northern7/.northern/northern.conf
sed -i '/addnode/d' /home/northern8/.northern/northern.conf

echo "Adding new nodes..."
echo "addnode=45.77.62.203" >> /home/northern/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern/.northern/northern.conf

echo "addnode=45.77.62.203" >> /home/northern2/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern2/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern2/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern2/.northern/northern.conf

echo "addnode=45.77.62.203" >> /home/northern3/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern3/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern3/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern3/.northern/northern.conf

echo "addnode=45.77.62.203" >> /home/northern4/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern4/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern4/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern4/.northern/northern.conf

echo "addnode=45.77.62.203" >> /home/northern5/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern5/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern5/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern5/.northern/northern.conf

echo "addnode=45.77.62.203" >> /home/northern6/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern6/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern6/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern6/.northern/northern.conf

echo "addnode=45.77.62.203" >> /home/northern7/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern7/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern7/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern7/.northern/northern.conf

echo "addnode=45.77.62.203" >> /home/northern8/.northern/northern.conf
echo "addnode=207.148.3.46" >> /home/northern8/.northern/northern.conf
echo "addnode=136.243.185.24" >> /home/northern8/.northern/northern.conf
echo "addnode=107.173.141.125" >> /home/northern8/.northern/northern.conf

echo "Syncing first node, please wait...";
northernd -datadir=/home/northern/.northern -daemon
until northern-cli -datadir=/home/northern/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"First node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Syncing second node, please wait...";
northernd -datadir=/home/northern2/.northern -daemon
until northern-cli -datadir=/home/northern2/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"Second node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Syncing third node, please wait...";
northernd -datadir=/home/northern3/.northern -daemon
until northern-cli -datadir=/home/northern3/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"Third node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Syncing fourth node, please wait...";
northernd -datadir=/home/northern4/.northern -daemon
until northern-cli -datadir=/home/northern4/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"Fourth node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Syncing fith node, please wait...";
northernd -datadir=/home/northern5/.northern -daemon
until northern-cli -datadir=/home/northern5/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"5th node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Syncing 6th node, please wait...";
northernd -datadir=/home/northern6/.northern -daemon
until northern-cli -datadir=/home/northern6/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"6th node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Syncing 7th node, please wait...";
northernd -datadir=/home/northern7/.northern -daemon
until northern-cli -datadir=/home/northern/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"5th node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Syncing 8thth node, please wait...";
northernd -datadir=/home/northern/.northern -daemon
until northern-cli -datadir=/home/northern8/.northern mnsync status | grep -m 1 '"IsBlockchainSynced": true,'; do sleep 1 ; done > /dev/null 2>&1
echo -e ${GREEN}"6th node is fully synced. Your masternode is running!"${NC}
sleep 5
echo "Deleting temporary files"
rm -rf /root/northern_4masternodes_update.sh
cd ~
echo "The END. You can close now the SSH terminal session";