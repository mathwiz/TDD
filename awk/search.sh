#!/bin/bash

bib="bibliography.txt"
cmd='BEGIN { FS="\n"; RS="" } /'
cmd+=$1
cmd+='/ { print; print ""; }'
echo $"'$cmd'"
awk $"'$cmd'" $bib
#awk $"\'BEGIN { FS=\'\n\'; RS=\'\' } /$1/ { print; print \'\'  }\'" $bib
