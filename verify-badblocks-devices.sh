#!/bin/bash
#Responsavel: Jeferson Araujo
#Email: jefersonaraujo95@gmail.com

#parted -l | grep "dev"| awk -F ":" '{print $1" "$2}'
#parted -l | grep "dev"| awk -F ":" '{print $1" "$2}' | cut -d " " -f2
DATA=`date +%Y-%m-%d`
parted -l | grep "dev"| awk -F ":" '{print $1" "$2}' > /tmp/devices
cat /tmp/devices | cut -d " " -f2

for device in $(cat /tmp/devices | cut -d " " -f2);
do
  echo "#####################################################" >> /var/badblocks.log
  echo "INICIANDO O $device as $DATA" >> /var/badblocks.log
  badblocks -sv -c 10240 $device >> /var/badblocks.log
  echo "FINALIZADO O $device as $DATA" >> /var/badblocks.log
  echo "#####################################################" >> /var/badblocks.log
done