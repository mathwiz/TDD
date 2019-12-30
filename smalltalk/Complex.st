Number subclass: Complex [
    |realpart imagpart|

    "Quick class-side methods"
    Complex class >> new [
        ^ self error: 'use real:imaginary:'
    ]

    Complex class >> new: ignore [
        ^ self new
    ]

    Complex class >> real: r imaginary: i [
        ^(super new) setReal: r setImag: i
    ]

    setReal: r setImag: i [
        realpart := r.
        imagpart := i.
        ^self
    ]

    real [ 
        ^realpart 
    ]

    imaginary [
        ^imagpart
    ]

    + val [
        ^ Complex real: (realpart + val real)
            imaginary: (imagpart + val imaginary)
    ]

    - val [
        ^ Complex real: (realpart - val real)
            imaginary: (imagpart - val imaginary)
    ]

    * val [
        ^ Complex real: (realpart * val real) - (imagpart * val imaginary)
            imaginary: (imagpart * val real) + (realpart * val imaginary)
    ]

    / val [
        | d r i |
        d := (val real * val real) + (val imaginary * val imaginary).
        r := ((realpart * val real) + (imagpart * val imaginary)).
        i := ((imagpart * val real) - (realpart * val imaginary)).
        ^ Complex real: (realpart * val real) - (imagpart * val imaginary)
            imaginary: (imagpart * val real) + (realpart * val imaginary)
    ]

    = val [
        ^(realpart = val realpart) & (imagpart = val imaginary)
    ]

    "All other comparisons are based on <"
    < val [
        ^self shouldNotImplement
    ]

    printOn: aStream [
        realpart printOn: aStream.
        aStream nextPut: $+.
        imagpart printOn: aStream.
        aStream nextPut:$i
    ]
]
