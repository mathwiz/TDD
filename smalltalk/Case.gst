Object subclass: Case [
| test found result |


Case class >> usage [
^
'A nice class for switch-like tests. Slower than cascaded ifs but clearer.
#case:do: uses identity for testing (useful since you''ll likely use Case
with symbols, integers, characters, and the like), #ifEqualTo:do: uses
equality.
e.g.
Case new test: myObject;
    case: 5				   do: [ ''got five''	    printNl ];
    when: [ :testVal | testVal isInteger ] do: [ ''an integer''     printNl ];
    else: 				       [ :testVal | testVal printNl ]
You can use (Case test: myObject) instead of the first line above. Which of
the two possibilities is clearer, it is a matter of taste.'
]

Case class >> test: anObject [
    ^self new test: anObject
]


test: anObject [
    test := anObject.
    found := false.
]

reset [
    found := false
]

else: aBlock [
    ^found
	ifFalse: [ self do: aBlock ]
	ifTrue: [ result ].
]

case: anObject do: aBlock [
    ^(found not and: [test == anObject])
	ifTrue: [ self do: aBlock ]
	ifFalse: [ result ].
]

ifEqualTo: anObject do: aBlock [
    ^(found not and: [test = anObject])
	ifTrue: [ self do: aBlock ]
	ifFalse: [ result ].
]

when: aBlock do: aBlock2 [
    ^(found not and: [aBlock value: test])
	ifTrue: [ self do: aBlock ]
	ifFalse: [ result ].
]


do: aBlock [
    found := true.
    ^result := (aBlock cull: test)
]

] "Case"
