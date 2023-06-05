Object subclass: #YDate.
YDate instanceVariableNames: 'year month day era'.
YDate extend [
setYear: y Month: m Day: d Era: e [
    year := y.
    month := m.
    day := d.
    era := e.
]
setYear: y Month: m Day: d [
    self setYear: y Month: m Day: d Era: (self class defaultEra)
]

asString [
    ^ year asString, '-', month asString, '-', day asString, ' ', era.
]
] "instance methods"

YDate class extend [
defaultEra [ ^ 'AD' ]
] "class methods"

Object subclass: NumberFunction [
| n |
setN: aNum [
    n := aNum.
]
value [
    self subclassResponsibility
]
NumberFunction class >> newWithN: n [
    ^ self basicNew setN: n
]
NumberFunction class >> even: n [
    ^ (n rem: 2) == 0.
]
NumberFunction class >> odd: n [
    ^ (self even: n) not.
]
] "NumberFunction"

NumberFunction subclass: SmallestDivisor [
value [ ^ n / 2.0 ]
] "SmallestDivisor"

| myDate myFun |
" YDate allInstVarNames displayNl. "
" YDate selectors displayNl. "
" NumberFunction displayNl. "
" NumberFunction allInstVarNames displayNl. "
" NumberFunction selectors displayNl. "

myDate := YDate new setYear: 2023 Month: 12 Day: 25.
Transcript show: myDate asString; cr.
Transcript show: YDate defaultEra; cr.

myFun := SmallestDivisor newWithN: 2.
Transcript show: myFun value asString; cr.
'Done' displayNl.

