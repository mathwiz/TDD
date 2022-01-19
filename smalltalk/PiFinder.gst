Object subclass: PiFinder [
| sum n |

PiFinder class >> new [
    ^ self basicNew initialize
]

initialize [
    sum := 0.
    n := 0.
]

value [
    ^ (4 * (sum numerator)) asString , 'e' , '/', (sum denominator asString)
]

step [
    | term |

    term :=
        Fraction new setNumerator: (-1 raisedTo: n)
                     setDenominator: (2 * n + 1).
        
    sum := sum + term.
    n := n + 1.
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

0 to: 16 do: [ :it |
    (testCase value: it) 
]

