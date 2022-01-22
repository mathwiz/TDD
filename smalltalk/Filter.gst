Object subclass: Filter [
| lineBlock in out |

setBlock: aBlock [
    lineBlock := aBlock
]

setIn: inFilename out: outFilename [
    in := inFilename.
    out := outFilename.
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

