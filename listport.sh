#!/usr/bin/env bash

while read name;
do
cat ./results/shodan/$name|gunzip|jq .port >> ./results/ports/$(echo $name|sed s/'json.gz'//g).txt
done <<< $(ls ./results/shodan/)
