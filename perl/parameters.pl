# first function example
print("\nNumber of parameters\n");
firstSub(1, 2, 3, 4, 5, 6);
firstSub(1..3);
firstSub("A".."Z");

sub firstSub {
    $numParameters = @_;
    print("The number of parameters is $numParameters\n");
}


# calling a function with parameter values
print("\nArea of rectangle\n");
areaOfRectangle(2, 3);
areaOfRectangle(5, 6);

sub areaOfRectangle {
    ($height, $width) = @_;

    $area = $height * $width;

    print("The height is $height. The width is $width.
        The area is $area.\n\n");
}

# generic sub for looking at args
sub viewargs {
    for $arg  (@_) {
        print "$arg\n";
    }
}

print "Show args:\n";
viewargs ("one", "two", "three", "four");
