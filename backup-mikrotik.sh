#!/bin/bash


PASS=`cat /root/pf`
PORT=22
DATE=`date +%Y%m%d`

mkdir /home/mikrotik/$DATE

for IP in `cat /bin/util/rb-list`; do

        sshpass -p "$PASS" ssh -o StrictHostKeyChecking=no -p $PORT -l backup $IP '/export' > /home/mikrotik/$DATE/bkp-$IP.rsc  

done

