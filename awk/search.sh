#!/bin/bash

bib="bibliography.txt"
cmd='BEGIN { FS="\n"; RS="" } /'
cmd+=$1
cmd+='/ { print; print ""; }'
echo "'$cmd' $bib"
awk $cmd $bib

