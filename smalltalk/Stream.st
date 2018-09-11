Object subclass: StreamExample [
  | stream |
  init [
    stream := ReadWriteStream on: ''
  ]

  addLine: aString [
    stream nextPutAll: aString; cr; nextPut: 10 asCharacter
  ]

  show [
    Transcript show: stream contents
  ]

  close [
    stream close
  ]
]

StreamExample class extend [
  new [
    ^ super new init
  ]
]


| tester stream |

tester := StreamExample new.
tester addLine: 'Sunflowers'.
tester addLine: 'Irises'.
tester addLine: 'Starry Night'.
tester show.
tester close.

stream := ReadWriteStream on: ''.
stream nextPutAll: 'Night Watch'; cr; nextPut: 10 asCharacter.
stream nextPutAll: 'Birth of Venus'; cr; nextPut: 10 asCharacter.

Transcript show: stream contents.
stream close.