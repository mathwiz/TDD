Object subclass: #HelloWorld
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Yohan'!

!HelloWorld methodsFor: 'apply primitives' stamp: 'YL 3/17/2019 10:36'!
getName
	^ name! !

!HelloWorld methodsFor: 'apply primitives' stamp: 'YL 3/17/2019 10:37'!
show
	"return a string representation"

	^ 'Hello ', name , '!!'! !


!HelloWorld methodsFor: 'initialize-release' stamp: 'YL 3/17/2019 10:40'!
setName: aString
	"set the name"

	name := aString
! !
