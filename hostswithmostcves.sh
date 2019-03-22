#!/usr/bin/env bash
while read name
do echo $(cat ./results/shodan/$name|gunzip|jq .|grep -e "CVE-****"|grep -v summ|wc -l): $name >> ./results/mostCVEs.txt &
done <<< $(ls ./results/shodan/)
