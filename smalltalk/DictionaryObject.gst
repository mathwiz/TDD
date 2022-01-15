Object subclass: Function [
| params logic |

value [ "to be implemented in subclass"
]

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
] "TriFunction"


BiFunction subclass: Max [
value [
    ^ (params at:1) < (params at:2)
        ifTrue: [ (params at: 2) ]
        ifFalse: [ (params at: 1) ]
]
] "Max"
