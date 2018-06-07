$prompt = "\nperl shell> ";
print $prompt;
while (<STDIN>) {
    eval;
    print $@; # any errors
    print $prompt;
}
