use English;
use feature qw(say);

my $prompt = "\nperl shell> ";
my $exp = '';
my @history = ();

while (
       do {
         print $prompt;
         chomp($exp = <STDIN>);
         $exp;
        }) {
  if ($exp eq 'history' or $exp eq 'h') {
    showHistory();
  } elsif ($exp eq '!') {
    history(0);
  } elsif ($exp =~ /!(\d+)/) {
    history($1 - 1);
  } elsif ( $exp =~ /\s*load\s*\(\s*['"](\w+)['"]\s*\)/ ) {
    load ($1);
    push (@history, $exp);
  } elsif ($exp eq 'quit' or $exp eq 'exit') {
    last;
  } else {
    eval $exp;
    push (@history, $exp);
  }
  print $@; # any errors
}


sub showHistory {
  my @h_list = @history;
  my $index = @history;
  for $it (@h_list) {
    say $index--, " ",  $it;
  }
}

sub history {
  my $offset = shift;
  my $index = @history - 1 - $offset;
  my $cmd = $history[$index];
  if (@history == 0) {
    say "History empty";
  } elsif ($cmd) {
    say $cmd;
    eval $cmd;
  } else {
    say "Bad command: ", $index;
  }
}

sub load {
  my $file = shift;
  open FILE, $file or die "Couldn't open file $file ($OS_ERROR)]n";
  while (<FILE>) {
    chomp;
    eval;
  }
  print "Loaded $file";
  close FILE;
}
