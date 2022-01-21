Object subclass: Filter [
| lineBlock in out |

setBlock: aBlock [
    lineBlock := aBlock
]
]


| test aFile |

test := Filter new.

aFile := FileStream open: 'cheat.txt' mode: FileStream read.
aFile displayNl.
aFile contents do: [ :it | it display ].
aFile close.

