#!/usr/bin/perl -w

$t = `date +"%s"`;
$s = ($t % 37 % 20) + 1999;
print "$s\n";
