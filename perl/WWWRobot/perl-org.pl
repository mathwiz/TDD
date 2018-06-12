#!/usr/bin/perl -w
use strict;
use LWP::Simple;
  
my $page = get("http://www.perl.org");
my $count = 0;
$count++ while $page =~ m{Perl}gi;
print "$count\n";
