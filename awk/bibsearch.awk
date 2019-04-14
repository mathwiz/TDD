#!/usr/bin/awk -f

BEGIN {
    FS="\n" 
    RS=""
    pat=ARGV[1]
    print "Searching for " pat
}

/chaos/ { print; print "" }


