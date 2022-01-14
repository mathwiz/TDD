Object subclass: Function [
| params |

at: key [
    ^ params at: key
]

addArgs: aDictionary [
    | it |
    aDictionary associationsDo: 
        [ :each |
            params at: (each key) put: (each value) ]
]

Function class>>initialize [
    'initialiaze' displayNl.
]

] "Function"


Function subclass: BiFunction [

] "BiFunction"
