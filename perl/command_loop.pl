use strict;
use English;

my $n = 0;
my $last_cmd = '';

$OUTPUT_AUTOFLUSH = 1;

while (
       do {
        print make_prompt();
        chomp($ARG = <STDIN>);
       }) {
    if ($ARG eq 'up') { ++$n; }
    elsif ($ARG eq 'down') { --$n; }
    elsif ($ARG eq 'zero') { $n = 0; }
    elsif ($ARG eq '!' ) {
        if ($last_cmd) {
            $ARG = $last_cmd;
            redo;
        } else {
            print "No previous commnand\n";
            next;
        }
    }
    elsif ($ARG eq 'quit' or $ARG eq 'exit') { last; }
    else {
        print "Unknown command <<$ARG>>\n";
        next;
    }
    $last_cmd = $ARG;
}
continue {
  print "[End loop]\n";
}

sub make_prompt {
  "$n up|down|zero|exit> ";
}
