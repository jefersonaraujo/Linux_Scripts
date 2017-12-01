#!/bin/bash
#Responsavel: Jeferson Araujo
#Email: jefersonaraujo95@gmail.com

parted -l | grep "dev"| awk -F ":" '{print $1" "$2}'
