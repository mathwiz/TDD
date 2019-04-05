# run with awk -f lineread.awk STDIN
/[0-9]+/ { print "Integer detected" }
/[A-z]+/ { print "Character deteced" }
/^$/ { print "Blank line detected" }
