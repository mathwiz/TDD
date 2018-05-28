@nums = (1,2,3,4,5,6);

@nums = (0, @nums);

print @nums[0] . "\n";

showarray(@nums);
showarray(double(@nums));

sub double {
    if (! @_) { return (); }
    my ($head, @tail) = @_;
    return (2*$head, double(@tail));
}

sub showarray {
    for $n (@_) {
        print "$n ";
    }
    print "\n";
}


