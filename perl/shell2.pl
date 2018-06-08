use English;
use feature qw(say);

my %GLOBALS;
my $prompt = "\nperl shell> ";
my $exp = '';
my @history = ();

$GLOBALS{'h_limit'} = 5;

while (
       do {
         print $prompt;
         chomp($exp = <STDIN>);
        }) {
  if ($exp eq 'history') {
    showHistory ();
  } elsif ($exp eq 'h') {
    showHistory ($GLOBALS{'h_limit'});
  } elsif ($exp =~ /history\s+(\d+)\s*$/) {
    showHistory ($1);
  } elsif ($exp eq '!') {
    history (0);
  } elsif ($exp =~ /!(\d+)/) {
    history ($1 - 1);
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
  my $limit = shift;
  my $start = $limit ? @history - $limit : 0;
  $start = $start < 0 ? 0 : $start;
  for (my $it = $start; $it < @history; $it++) {
    say @history - $it, " ",  $history[$it];
  }
}

sub history {
  my $offset = shift;
  my $index = @history - 1 - $offset;
  $index = $index < 0 ? @history : $index;
  my $cmd = $history[$index];
  if (@history == 0) {
    say "History empty";
  } elsif ($cmd) {
    say $cmd;
    eval $cmd;
  } else {
    say "Bad command: !", $offset + 1;
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
