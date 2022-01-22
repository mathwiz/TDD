Object subclass: Filter [
| in out selector processor |

selector: aBlock [
    selector := aBlock
]

processor: aBlock [
    processor := aBlock
]

in: aString [
    in := aString.
]

out: aString [
    out := aString.
]

]


| test aFile |

test := Filter new.

aFile := FileStream open: 'cheat.txt' mode: FileStream read.
aFile displayNl.
aFile nextLine displayNl.
aFile nextLine displayNl.
aFile nextLine displayNl.
" aFile contents do: [ :it | it display ]. "
aFile close.

