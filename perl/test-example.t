use diagnostics; # this gives you more debugging information
use warnings;    # this warns you of bad practices
use strict;      # this prevents silly errors
use Test::More qw( no_plan ); # for the is() and isnt() functions

do 'test-example.pl';

is(get_val (), 'foo', "The value is 'foo'")

