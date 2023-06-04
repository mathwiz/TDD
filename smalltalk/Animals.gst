Object subclass: Animal [
  | type color |

  <comment: 'Implement getSound in subclasses'>

  Animal class >> new [
    <category: 'instance creation'>
    | n |
    n := super new.
    n init.
    ^ n
  ]

  init [
    <category: 'initialization'>
    color := 'white'.
    type := 'Animal'
  ]

  talk [
    Transcript show: type , ' says ', self sound; cr
  ]

  sound [
    ^ self subclassResponsibility
  ]

  color [
    ^ color
  ]

  type [ ^ type ]
]

Animal extend [
  init: typeString color: colorString [
    type := typeString.
    color := colorString.
  ]
]


Animal class extend [
  "An alternative way to add methods to the class"

  new: typeString color: colorString [
    <category: 'instance creation'>
    | n |
    n := super new.
    n init: typeString color: colorString.
    ^ n
  ]
]

Animal subclass: Cat [
  Cat class >> new: colorString [
    | n |
    n := super new: 'Cat' color: colorString.
    ^ n
  ]

  sound [
    ^ 'meow'
  ]
]

Animal subclass: Dog [
  Dog class >> new: colorString [
    | n |
    n := super new: 'Dog' color: colorString.
    ^ n
  ]

  sound [
    ^ 'woof'
  ]
]


| cat dog cardinal |

Transcript show: ('Animal default color is ' , (Animal new color)); cr.
cardinal := (Animal new: 'Cardinal' color: 'peach').
Transcript show: ('Created ' , (cardinal type) , ' with color ' , (cardinal color)); cr.

cat := Cat new: 'black'.
cat talk.

dog := Dog new: 'yellow'.
dog talk.
