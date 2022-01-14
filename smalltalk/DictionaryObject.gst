Object subclass: Function [
| params logic |

value: aBlock [
    ^ aBlock value: (params at:1)
]

at: key [
    ^ params at: key
]

Function class>>newFromDict: aDict [
    ^ self new
        setDictionaryParams: aDict;
        yourself
]

Function class>>newFromArray: anArray [
    ^ self new
        setArrayParams: anArray;
        yourself
]

Function>>setDictionaryParams: aDict [
    params := Dictionary new.
    params at: 1 put: aDict
]

Function>>setArrayParams: anArray [
    params := Dictionary new.
    (1 to: anArray size) do: 
        [ :each |
            params at: each put: (anArray at:each) ]
]

] "Function"


Function subclass: BiFunction [
value: aBlock [
    ^ aBlock value: (params at:1) value: (params at:2)
]
] "BiFunction"


Function subclass: TriFunction [
value: aBlock [
    ^ aBlock value: (params at:1) value: (params at:2) value: (params at: 3)
]
] "BiFunction"
