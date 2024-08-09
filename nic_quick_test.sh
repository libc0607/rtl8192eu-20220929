#!/bin/sh 

NIC=$1
CHANNEL=$2

echo "insmod"
rmmod 8192eu
rmmod rtl8xxxu
sleep 2
modprobe cfg80211
insmod 8192eu.ko rtw_regd_src=1 rtw_tx_pwr_by_rate=0 rtw_tx_pwr_lmt_enable=0 
sleep 5
echo "set $NIC monitor mode"
airmon-ng check kill 
airmon-ng start $NIC 

echo "set channel to $CHANNEL"
ifconfig $NIC down
iwconfig $NIC mode monitor channel $CHANNEL
ifconfig $NIC up
