#!/usr/bin/perl -w
  
use strict;
use LWP::Simple;
use HTML::TokeParser;
  
my $html   = get("http://www.perl.com/");
my $stream = HTML::TokeParser->new(\$html);
my %image  = ( );
  
while (my $token = $stream->get_token) {
    if ($token->[0] eq 'S' && $token->[1] eq 'img') {
        # store src value in %image
        $image{ $token->[2]{'src'} }++;
    }
}
  
foreach my $pic (sort keys %image) {
    print "$pic\n";
}
