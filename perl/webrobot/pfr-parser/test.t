#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use feature qw(say);
use File::Basename qw(dirname);
use Cwd  qw(abs_path);
use lib dirname abs_path $0;
use functions qw(delta_compare);

is (length (" "), 1, "blank non-empty string");
is (delta_compare(sqrt(2), 1.41, 0.01), 1);

done_testing();