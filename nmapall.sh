#!/usr/bin/env bash

while read domain;
do  while [ $(ps faux|grep nmap|wc -l) -gt 100 ]
    do sleep 1
  done
  nmap -T4 -sSV -p0- --script=banner --script=ssl-enum-ciphers $domain -oA ./results/nmap/$domain 2>&1 > /dev/null &

  echo $domain
done < ./input/combilist.txt
