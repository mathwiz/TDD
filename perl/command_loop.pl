use strict;
use English;

my $n = 0;
my $last_cmd = '';

$OUTPUT_AUTOFLUSH = 1;

print make_prompt();
chomp ($ARG = <STDIN>);

while () {
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
    print make_prompt();
    chomp($ARG = <STDIN>);
}

sub make_prompt {
    return "$n\ncommand? ";
}
