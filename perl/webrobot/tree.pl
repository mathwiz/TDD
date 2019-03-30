#!/usr/bin/perl -w
  
use strict;
use LWP::Simple;
use HTML::TreeBuilder;
  
my $html = get("http://www.perl.com/");
my $root = HTML::TreeBuilder->new_from_content($html);
my %images;
foreach my $node ($root->find_by_tag_name('img')) {
    $images{ $node->attr('src') }++;
}
  
foreach my $pic (sort keys %images) {
    print "$pic\n";
}
