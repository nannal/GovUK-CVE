#!/usr/bin/env bash

while read name;
do echo $name, $(dig +short $name|grep -v "[a-z]"|head -n 1) >> ./input/ipaddr.txt;
done < ./input/combilist.txt
