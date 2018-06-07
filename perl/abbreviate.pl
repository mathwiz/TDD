my $ARG = '';
while (<>) { 
    chomp;
    $initials = '';
    while (/([\w']+)\W*/g) { 
        $initials .= substr($1, 0, 1);
    }
    print "$ARG -> \U$initials\E\n";
}

