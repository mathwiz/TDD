@nums = (1,2,3,4,5,6,7);

@nums = (0, @nums);

print @nums[1] . "\n";

showarray (@nums);
showarray (double(@nums));
print "Sum: " . sum (0,(1,2,3,4,5,6))  . "\n";

sub sum {
    my ($acc, @list) = @_;
    if (! @list) { return $acc; }
    my ($head, @tail) = @list;
    return sum ($acc + $head, @tail);  
}

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


