| makeTimeString start end str |

makeTimeString := [ :time |
    time asSeconds asString
].

start := DateTime now.
'Starting string concatenation' displayNl.

100 timesRepeat:
    [ result := String new.
      1000 timesRepeat: [ result := result, 'abcdefg' ] ].

str printNl.

end := DateTime now.
('Ended string concatenation after ', (makeTimeString value: (end - start)), ' seconds')  displayNl.

'----' displayNl.

start := DateTime now.
'Starting stream concatenation' displayNl.

100 timesRepeat:
    [ writer := WriteStream on: String new.
      1000 timesRepeat: [ writer nextPutAll: 'abcdefg' ].
      writer contents ].

str printNl.

end := DateTime now.
('Ended stream concatenation after ', (makeTimeString value: (end - start)), ' seconds')  displayNl.


'done' displayNl.
