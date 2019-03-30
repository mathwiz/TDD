#!/usr/bin/perl -w
use warnings;
use English;
use feature qw(say);

$prompt = "\nperl shell> ";
print $prompt;
while (<STDIN>) {
    eval;
    print $@; # any errors
    print $prompt;
}
