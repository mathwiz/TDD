#!/usr/bin/perl
use warnings;
use English;
use feature qw(say);
use Cwd;

my %GLOBALS = ();
my $prompt = "\nperl shell> ";
my $exp = '';
my @history = ();

$GLOBALS{'h_limit'} = 10;

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
  } elsif ( $exp =~ /^\s*!(\d*)e\s*s\/(.*)\/(.*)\/\s*$/ ) {
    $exp = edit ($1, $2, $3);
    run ($exp);
  } elsif ($exp eq '!') {
    $exp = history (0);
    run ($exp);
  } elsif ($exp =~ /!(\d+)\s*$/) {
    $exp = history ($1 - 1);
    run ($exp);
  } elsif ( $exp =~ /^\s*help\s*/ ) {
    showHelp ();
  } elsif ( $exp =~ /\s*load\s+(\S+)\s*/ ) {
    load ($1);
    push (@history, $exp);
  } elsif ($exp eq 'quit' or $exp eq 'exit') {
    last;
  } else {
    run ($exp);
  }
  print $@; # any errors
}


sub run {
  my $exp = shift;
  if ($exp) {
    eval $exp;
    push (@history, $exp);
  }
}

sub historyIndexFromList {
  my $offset = shift;
  my $index = @history - 1 - $offset;
  $index < 0 ? @history : $index;
}

sub edit {
  my $offset = shift;
  my $pat = shift;
  my $sub = shift;
  my $cmd = '';
  if (@history == 0) {
    print "Empty history\n";
  } elsif (not $pat) {
    print "No pattern regex provided\n";
  } elsif (not $sub) {
    print "No substitution regex provided\n";
  } else {
    my $index = historyIndexFromList ($offset ? $offset - 1 : 0);
    $cmd = $history[$index];
    $cmd =~ s/$pat/$sub/;
    say $cmd;
  }
  $cmd;
}

sub showHelp {
  print "help - this list\n";
  print "history {n} - n lines of history (empty == all)\n";
  print "h - history $GLOBALS{h_limit}\n";
  print "!{n} - repeat nth previous command (! == !1)\n";
  print "!{n}e s/pat/sub/ - edit and run nth previous command by replacing pat with sub\n";
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
  } else {
    say "Bad command: !", $offset + 1;
  }
  $cmd;
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
