Object subclass: #YDate.
YDate instanceVariableNames: 'year month day era'.
YDate extend [
setYear: y Month: m Day: d Era: e [
year := y.
month := m.
day := d.
era := e.
]
asString [
    ^ y.
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
    ^ (self even: n) not.
]
] "NumberFunction"

NumberFunction subclass: SmallestDivisor [

]

| myDate myFun |
YDate displayNl.
YDate allInstVarNames displayNl.
YDate selectors displayNl.
NumberFunction displayNl.
NumberFunction allInstVarNames displayNl.
NumberFunction selectors displayNl.

myDate := YDate new.
myFun := SmallestDivisor new.

'Done' displayNl.

