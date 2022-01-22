Object subclass: StandardIO [

] "StandardIO"



| test aFile |

test := StandardIO new.
test displayNl.

aFile := FileStream open: 'cheat.txt' mode: FileStream read.
aFile displayNl.
aFile nextLine displayNl.
aFile nextLine displayNl.
aFile nextLine displayNl.
" aFile contents do: [ :it | it display ]. "
aFile close.

