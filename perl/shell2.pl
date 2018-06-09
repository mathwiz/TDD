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
  if ($exp =~ /^\s*history\s*$/) {
    showHistory ();
  } elsif ($exp eq 'h') {
    showHistory ($GLOBALS{'h_limit'});
  } elsif ($exp =~ /\s*history\s+(\d+)\s*$/) {
    showHistory ($1);
  } elsif ($exp eq '!') {
    history (0);
  } elsif ( $exp =~ /^\s*!(\d*)e\s*s\/(.*)\/(.*)\/\s*$/ ) {
    editAndRun ($1, $2, $3);
  } elsif ($exp =~ /!(\d+)\s*$/) {
    history ($1 - 1);
  } elsif ( $exp =~ /^\s*help\s*/ ) {
    showHelp ();
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


sub historyIndexFromList {
  my $offset = shift;
  my $index = @history - 1 - $offset;
  $index < 0 ? @history : $index;
}

sub editAndRun {
  my $offset = shift;
  my $pat = shift;
  my $sub = shift;
  if (@history == 0) {
    print "Empty history\n";
  } elsif (not $pat) {
    print "No pattern regex provided\n";
  } elsif (not $sub) {
    print "No substitution regex provided\n";
  } else {
    print "offset: $offset\n";
    my $index = historyIndexFromList ($offset ? $offset : 1);
    print "index: $index  history: $history[$index]\n";
    my $cmd = $history[$index];
    $cmd =~ s/$pat/$sub/;
    print "command: $cmd\n";
    #eval $cmd;
    push (@history, $cmd);
  }
}

sub showHelp {
  print "help - this list\n";
  print "history {n} - n lines of history (empty == all)\n";
  print "h - history $GLOBALS{h_limit}\n";
  print "!{n} - repeat nth previous command (! == !1)\n";
  print "!{n}e regexp - edit and run nth previous command using regexp\n";
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
  my $index = historyIndexFromList ($offset);
  my $cmd = $history[$index];
  if (@history == 0) {
    say "History empty";
  } elsif ($cmd) {
    say $cmd;
    eval $cmd;
    push (@history, $cmd);
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
