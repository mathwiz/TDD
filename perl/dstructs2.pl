use feature qw(say);

@arr1 = (0,1,2,3,4,5,6,7,8,9,10);
showArray (@arr1);

@arr2 = split ('',"abcdefghijk");
showArray (@arr2);

$hash{'name'} = "Yohan";
$hash{'age'} = 49;
$hash{'phone'} = '123-333-8987';
@letters = split ('',"kjfewoinnfwelk");
$hash{'array_ltr'} = \@letters;
@alsoletters = $hash{'array_ltr'};

showHash (%hash);
showArray (@letters);
say ($hash{'array_ltr'});
say (@alsoletters);

$frame = {'name'=>3, 'price'=>4};
showHash (%frame);

# todo: move helpers
sub showHash {
  my %h = @_;
  my @key_elems;
  foreach $it (keys %h) {
    @key_elems = split ('_',$it);
    if (@key_elems and $key_elems[0] eq 'array') {
        print $it, ": "; 
        showArray (@h{$it});
    } else {
        print "$it : $h{$it}\n";
    }
  }
}

sub showArray {
  foreach $it (@_) {
    print "$it ";
  }
  print "\n";
}
