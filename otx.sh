#!/usr/bin/env bash

while read domain
  do
  echo $domain
  curl -sS "https://otx.alienvault.com/api/v1/indicators/domain/$domain" |jq '.pulse_info' >> ./results/otx.json
  echo $domain >> ./results/otx.json
done < ./input/domainsraw.txt
