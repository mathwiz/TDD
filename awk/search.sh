#!/bin/bash

if [ "$#" -ne 2 ] 
then
    bib="./bibliography.txt"
else
  bib=$2
fi

cmd='BEGIN { FS="\n"; RS="" } /'
cmd+=$1
cmd+='/ { print; print ""; }'

echo "Searching for '$1' in $bib"
echo ""
awk $"$cmd" $bib

