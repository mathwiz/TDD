Object subclass: #Sequence.
Sequence instanceVariableNames: 'seq'.

Sequence class extend [
newTo: end [ 
    ^ self newFrom: 1 To: end
]

newFrom: from To: to [
    ^ self newFrom: from To: to By: 1
]

newFrom: from To: to By: by [
    ^ self new from: from to: to by: by
]

] "class"

Sequence extend [
from: from to: to by: by [
    seq :=  (from to: to by: by) inject: (OrderedCollection new) into: [ :acc :each | acc add: each. acc ].
    ^ self
]

asString [ 
    ^ seq inject: '' into: [ :acc :x | acc , (acc size = 0 ifTrue: [ x asString ] ifFalse: [ ',' , x asString] ) ]. 
]

] "instance"


| tester seq from to | 

seq := OrderedCollection new.
from := -10.
to := 10.
by := 2.
tester := 
[ :i | 
i > to ifFalse: [ seq add: i. tester value: (i + by) ]
].
" tester value: from. "
" seq do: [ :x | x printNl. ]. "

seq := Sequence newFrom: from To: to By: by.
tester := seq asString.
Transcript show: tester; cr.

Transcript show: 'done'; cr.
