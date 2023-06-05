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
    ^ year asString, '-', month asString, '-', day asString, ' ', era.
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
value [
    ^ n
]
] "SmallestDivisor"

| myDate myFun |
" YDate allInstVarNames displayNl. "
" YDate selectors displayNl. "
" NumberFunction displayNl. "
" NumberFunction allInstVarNames displayNl. "
" NumberFunction selectors displayNl. "

myDate := YDate new setYear: 2023 Month: 12 Day: 25 Era: 'AD'.
Transcript show: myDate asString; cr.
myFun := SmallestDivisor new setN: 2.
Transcript show: myFun value asString; cr.
'Done' displayNl.

