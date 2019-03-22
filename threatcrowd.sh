#!/usr/bin/env bash

while read domain
  do
  echo $domain
  curl -sS "https://www.threatcrowd.org/searchApi/v2/domain/report/?domain=$domain" |jq '{votes, references, permalink}' >> ./results/threatcrowd.json
  sleep 1
done < ./input/domainsraw.txt
