#!/bin/bash
#Responsavel: Jeferson Araujo
#Email: jefersonaraujo95@gmail.com

#parted -l | grep "dev"| awk -F ":" '{print $1" "$2}'
#parted -l | grep "dev"| awk -F ":" '{print $1" "$2}' | cut -d " " -f2
parted -l | grep "dev"| awk -F ":" '{print $1" "$2}' > /tmp/devices
cat /tmp/devices | cut -d " " -f2
