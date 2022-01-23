Object subclass: PiFinder [
| sum denom adding |

PiFinder class >> new [
    ^ self basicNew initialize
]

initialize [
    sum := 0.
    denom := 1.
    adding := true.
]

value [
    ^ (4 * sum)
]

floatValue [
    ^ 1.0e * (self value)
]

step [
    | term |
    term :=
         (adding ifTrue: [1] ifFalse:[-1]) / 
         denom.
        
    sum := sum + term.
    denom := denom + 2.
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
    'Iteration ' display.
    steps display.
    ':  ' display.
    (p floatValue) display.
    '  :  ' display.
    (p value) displayNl.
]

0 to: (2 raisedTo: 20) do: [ :it |
    (testCase value: it) 
]

