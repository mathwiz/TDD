#!/usr/bin/perl -w
use strict;
use LWP;
  
my $browser = LWP::UserAgent->new( );
my $response = $browser->get("http://www.perl.com/");
print $response->header("Server"), "\n";
