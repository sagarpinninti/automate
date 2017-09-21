#!/bin/bash
token=`sudo kubeadm token list |cut -d" " -f1 |sed -n 2p`
S=sudo
a=kubeadm
j=join
s="--skip-preflight-checks"
b='#!/bin/bash'
##### REPLACE masternodeip with your apiserver details #########
c=`echo $S $a $j --token $token masternodeip:6443 $s`
d=$b'\n'$c
echo -e $d > join.sh
chmod -R 777 join.sh
