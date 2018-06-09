sub showHash { my %h = @_; foreach $it (keys %h) {print "$it => $h{$it}\n"} }

sub showArray { foreach $it (@_) {print "$it "} print "\n";}
