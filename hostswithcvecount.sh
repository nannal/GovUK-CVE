#!/usr/bin/env bash

hostsWithCves=0
while read name
do hostsWithCves=$((hostsWithCves+ $(cat ./results/shodan/$name|gunzip|jq .vulns|head -n 1|grep -v null|wc -l)))
done <<< $(ls ./results/shodan/)
echo $hostsWithCves
