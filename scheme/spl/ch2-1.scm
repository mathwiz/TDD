Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO warranty; not even
for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday October 15, 2011 at 8:30:48 PM
  Release 9.1 || Microcode 15.1 || Runtime 15.7 || Win32 1.8 || SF 4.41 || LIAR/i386 4.118
  Edwin 3.116
;You are in an interaction window of the Edwin editor.
;Type `C-h' for help, or `C-h t' for a tutorial.
;`C-h m' will describe some commands.
;`C-h' means: hold down the Ctrl key and type `h'.
;Package: (user)

"hello"
;Value 11: "hello"

42
;Value: 42

22/7
;Value: 22/7

+
;Value 12: #[arity-dispatched-procedure 12]

(cons 'a '(b c))
;Value 13: (a b c)

(define square (lambda (n) (* n n)))
;Value: square

(square 7)
;Value: 49

(square -200)
;Value: 40000

(square .5)
;Value: .25

(square -1/2)
;Value: 1/4

(load "reciprocal.scm")
;Unable to find file "reciprocal.scm" because: File does not exist.
;To continue, call RESTART with an option number:
; (RESTART 1) => Return to read-eval-print level 1.
;Start debugger? (y or n): n

(restart 1)
;Abort!

(load "~/documents/github/tdd/scheme/reciprocal.scm")
;Loading "\\users\\yohan\\documents\\github\\tdd\\scheme\\reciprocal.scm"... done
;Value: reciprocal

(reciprocal 13)
;Value: 1/13

(reciprocal (reciprocal 10))
;Value: 10

