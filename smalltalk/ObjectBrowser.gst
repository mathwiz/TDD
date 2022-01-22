Object subclass: ObjectBrowser [

ObjectBrowser class >> findMethod: nameString [
]

ObjectBrowser class >> allClasses [
    ^ Object allSubclasses
]

] "ObjectBrowser"


| config file |
config := LookupTable new.
file := (File name: 'myapp.conf') readStream.
file linesDo: [:line |
    (line =~ '(\w+)\s*=\s*(\w+)') ifMatched: [:match |
        config at: (match at: 1) put: (match at: 2)]].
file close.
config printNl.

