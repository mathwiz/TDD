Object subclass: PiFinder [
| sum denom adding |

PiFinder class >> new [
    ^ self basicNew initialize
]

initialize [
    sum := 0e.
    denom := 1e.
    adding := true.
]

value [
    ^ (4 * sum)
]

step [
    | term |
    term :=
         (adding ifTrue: [1] ifFalse:[-1]) / 
         denom.
        
    sum := sum + term.
    denom := denom + 2e.
    adding := adding not.
    ^ term
]

]


| testCase |

testCase := [ :steps |
    | p |
    p := PiFinder new.
    1 to: steps do: 
        [ :it | p step  ].
    steps display.
    ': Value is ' display.
    (p value) displayNl.
]

0 to: (2 raisedTo: 16) do: [ :it |
    (testCase value: it) 
]

