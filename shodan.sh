#!/usr/bin/env bash

while read ip
do name=$(echo $ip|cut -f 1 -d ',')
arr=$(echo $ip|cut -f 2 -d ' ')
shodan2 host $arr -O ./results/shodan/$name 
done < ./input/ipaddr.txt
