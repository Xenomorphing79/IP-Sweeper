#!/bin/bash
if [ "$1" == "" ]
then
echo "Enter an address"
echo "Syntax for the same is ./ipsweep.sh 192.168.1"

else

for ip in `seq 1 254`; do
ping -c 2 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & ## you may change the $1 with something suitable for you like 192.168.1 according to your current network 
## this bash file transmits 2 files by default 
done
fi

