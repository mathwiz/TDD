#!/usr/bin/perl
use strict;
use HTML::TableExtract;

my $html_string = do { local $/; <STDIN> };

print $html_string; 
