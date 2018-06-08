use feature qw(say);

@arr1 = (0,1,2,3,4,5,6,7,8,9,10);
show (@arr1);

@arr2 = split ('',"abcdefghijk");
show (@arr2);

$hash{'name'} = "Yohan";
$hash{'age'} = 49;
$hash{'phone'} = '123-333-8987';

showHash (%hash);

sub showHash {
  my %h = @_;
  foreach $it (keys %h) {
    print "$it : $h{$it}\n";
  }
}

sub show {
  foreach $it (@_) {
    print "$it ";
  }
  print "\n";
}
