package functions;
use strict;
use warnings FATAL => 'all';
use Exporter qw(import);
use List::Util qw(reduce);

our @EXPORT_OK = qw(sum_squares delta_compare);

sub delta_compare {
    my ($actual, $expected, $delta) = @_;
    abs($actual - $expected) < $delta ? 1 : 0;
}

1;