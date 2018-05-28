@nums = (1,2,3,4,5,6);

@nums = (-1, @nums);
my ($head, @tail) = @nums;
print $head . "\n";

showarray (@nums);
showarray (double (@nums));
print "Sum: " . sum (0,@nums)  . "\n";
print "Sum: " . sum (0,())  . "\n";

sub sum {
    my ($acc, @list) = @_;
    my ($head, @tail) = @list;
    return (! @list) ? $acc : sum ($acc + $head, @tail);  
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


