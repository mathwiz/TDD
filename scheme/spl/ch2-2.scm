Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday October 15, 2011 at 8:30:48 PM
  Release 9.1 || Microcode 15.1 || Runtime 15.7 || Win32 1.8 || SF 4.41 || LIAR/i386 4.118 || Edwin 3.116

;You are in an interaction window of the Edwin editor.
;Type `C-h' for help, or `C-h t' for a tutorial.
;`C-h m' will describe some commands.
;`C-h' means: hold down the Ctrl key and type `h'.
;Package: (user)

1234567890
;Value: 1234567890

3/4
;Value: 3/4

2.71234
;Value: 2.71234

2.2+1.1i
;Value: 2.2+1.1i

(+ 1/2 1/2)
;Value: 1

(- 1.5 1/2)
;Value: 1.

(* 3 1/2)
;Value: 3/2

(/ 1.5 3/4)
;Value: 2.

(+ (+ 2 2) (+ 2 2))
;Value: 8

(- 2 (* 4 1/3))
;Value: 2/3

(* 2 (* 2 (* 2 (* 2 2))))
;Value: 32

(/ (* 6/7 7/2) (- 4.5 1.5))
;Value: 1.

(quote (1 2 3 4 5))
;Value 11: (1 2 3 4 5)

(quote ("this" "is" "a" "list"))
;Value 12: ("this" "is" "a" "list")

(quote (+ 3 4))
;Value 13: (+ 3 4)

'(1 2 3 4)
;Value 14: (1 2 3 4)

'((1 2) (3 4))
;Value 15: ((1 2) (3 4))

'(/ (* 2 -1) 3)
;Value 16: (/ (* 2 -1) 3)

(quote hello)
;Value: hello

'2
;Value: 2

'2/3
;Value: 2/3

(quote "Hi Mom!")
;Value 17: "Hi Mom!"

'"Hi Mom!"
;Value 18: "Hi Mom!"

(car '(a b c))
;Value: a

(cdr '(a b c))
;Value 19: (b c)

(cdr '(a))
;Value: ()

(car (cdr '(a b c)))
;Value: b

(cdr (cdr '(a b c)))
;Value 20: (c)

(car '((a b) (c d)))
;Value 22: (a b)

(cdr '((a b) (c d)))
;Value 23: ((c d))

(cons 'a '())
;Value 24: (a)

(cons 'a '(b c))
;Value 25: (a b c)

(cons 'a (cons 'b (cons 'c '())))
;Value 11: (a b c)

(cons '(a b) '(c d))
;Value 12: ((a b) c d)

(car (cons 'a '(b c)))
;Value: a

(cdr (cons 'a '(b c)))
;Value 13: (b c)

(cons (car '(a b c))
      (cdr '(d e f)))
;Value 15: (a e f)

(cons (car '(a b c))
      (cdr '(a c c)))
;Value 16: (a c c)

(cons 'a 'b)
;Value 17: (a . b)

(cdr '(a . b))
;Value: b

(cons 'a '(b . c))
;Value 18: (a b . c)

'(a . (b . (c . ())))
;Value 19: (a b c)

(list 'a 'b 'c)
;Value 20: (a b c)

(list 'a)
;Value 21: (a)

(list)
;Value: ()

