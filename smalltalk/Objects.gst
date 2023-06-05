Object subclass: #YDate.
YDate instanceVariableNames: 'year month day era'.

YDate class extend [
newYear: yyyy Month: mm Day: dd [
    ^ self basicNew setYear: yyyy Month: mm Day: dd
]
defaultEra [ ^ 'AD' ]
] "class methods"

YDate extend [
setYear: y Month: m Day: d Era: e [
    year := y. month := m. day := d. era := e.
]
setYear: y Month: m Day: d [
    self setYear: y Month: m Day: d Era: (self class defaultEra)
]

asString [
    ^ year asString, '-', month asString, '-', day asString, ' ', era.
]
] "instance methods"


Object subclass: NumberFunction [
| n |
Num: aNum [
    n := aNum.
]
Num [ ^ n ]
value [
    self subclassResponsibility
]
NumberFunction class>> newNumber: n [
    ^ self basicNew Num: n
]
NumberFunction class>> even: n [
    ^ (n rem: 2) == 0.
]
NumberFunction class>> odd: n [
    ^ (self even: n) not.
]
NumberFunction class>> does: a divide: b [
    ^ 0 == (b rem: a).
]
] "NumberFunction"

NumberFunction subclass: SmallestDivisor [
value [ 
    ^ self findDivisorForTest: 2.
]
findDivisorForTest: test [
    (test * test > n) ifTrue: [ ^ n ].
    (self class does: test divide: n) ifTrue: [ ^ test ].
    ^ self findDivisorForTest: test+1
]
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

myFun := SmallestDivisor newNumber: 7.
Transcript show: myFun Num asString; cr.
Transcript show: ((myFun class does: 3 divide: 14) ifTrue: [ 'Nah' ] ifFalse: [ '3 does not divide 14' ]); cr.
Transcript show: ((myFun class does: 7 divide: 14) ifTrue: [ '7 divides 14' ]); cr.
Transcript show: myFun value asString; cr.
Transcript show: (SmallestDivisor newNumber: 21) value asString; cr.
'Done' displayNl.

