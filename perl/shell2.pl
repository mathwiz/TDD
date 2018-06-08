use English;
use feature qw(say);

my $prompt = "\nperl shell> ";
my $exp = '';
while (
       do {
         print $prompt;
         chomp($exp = <STDIN>)
        }) {
  if ( $exp =~ /\s*load\s*\(\s*['"](\w+)['"]\s*\)/ ) {
    print "Loading\n ";
    load ($1);
  } elsif ($exp eq 'quit') {
    last;
  } else {
    eval $exp;
  }
  print $@; # any errors
}

sub load {
  my $file = shift;
  open FILE, $file or die "Couldn't open file $file ($OS_ERROR)]n";
  while (<FILE>) {
    chomp;
    eval;
  }
}
