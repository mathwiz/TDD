Object subclass: #YDate.
YDate instanceVariableNames: 'year month day era'.
YDate extend [
setYear: y Month: m Day: d Era: e [
year := y.
month := m.
day := d.
era := e.
]
] "instance methods"


Object subclass: NumberFunction [
| n |
setN: aNum [
    n := aNum.
]
value [
    self subclassResponsibility
]
NumberFunction class >> even: n [
    ^ (n rem: 2) == 0.
]
NumberFunction class >> odd: n [
    ^ self even: n not.
]
] "NumberFunction"


| myDate myFun |
YDate displayNl.
YDate allInstVarNames displayNl.
YDate selectors displayNl.
NumberFunction displayNl.
NumberFunction allInstVarNames displayNl.
NumberFunction selectors displayNl.
'Done' displayNl.

