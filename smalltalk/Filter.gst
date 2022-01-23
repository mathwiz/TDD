Object subclass: Filter [
| in out selector processor |

selector: aRegexString [
    selector := aRegexString
]

processor: aBlock [
    processor := aBlock
]

inFilename: aString [
    in := aString.
]

outFilename: aString [
    out := aString.
]

]


| test aFile |

test := Filter new.

config := LookupTable new.
file := (File name: 'cheat.txt') readStream.
file linesDo: [:line |
    (line =~ '(\w+)\s*=\s*(\w+)') ifMatched: [:match |
        config at: (match at: 1) put: (match at: 2)]].
file close.
config printNl.


aFile := FileStream open: 'cheat.txt' mode: FileStream read.
aFile displayNl.
aFile nextLine displayNl.
aFile nextLine displayNl.
aFile nextLine displayNl.
" aFile contents do: [ :it | it display ]. "
aFile close.

