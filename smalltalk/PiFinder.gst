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
    "bug prevents evaluating as Float"
    ^ 4 * sum
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

0 to: 6 do: [ :it |
    (testCase value: it) 
]

