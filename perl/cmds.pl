@alphabet = split ('',"abcdefghijklmnopqrstuvwxyz");
print "alphabet\n";

@ones = (1,2,3,4,5,6,7,8,9);
print "ones: array\n";

@teens = (11,12,13,14,15,16,17,18,19);
print "teens: array\n";

%fruits = ("a"=>"apple","b"=>"banana","c"=>"cantaloupe","d"=>"durian");
print "fruits: hash\n";

%heroes = ("Supergirl"=>"Kara Danvers","Green Arrow"=>"Oliver Queen","Flash"=>"Barry Allen","Black Canary"=>"Dinah Drake","Atom"=>"Ray Palmer","White Canary"=>"Sara Lance","Superman"=>"Clark Kent","Batman"=>"Bruce Wayne","Deathstroke"=>"Slade Wilson");
print "heroes: hash\n";

sub compare { my ($x,$y) = @_; $x == $y ? "equal" : ($x < $y ? "less" : "greater"); }
print "compare: sub\n";
