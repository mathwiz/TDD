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
    ^ (4e * sum)
]

step [
    | term |
    term :=
         (adding ifTrue: [1e] ifFalse:[-1e]) / 
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
    'Iteration ' display.
    steps display.
    ':  ' display.
    (p value) displayNl.
]

0 to: (2 raisedTo: 18) do: [ :it |
    (testCase value: it) 
]

