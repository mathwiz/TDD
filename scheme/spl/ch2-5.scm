MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO warranty; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Sunday February 7, 2016 at 10:30:06 AM
  Release 9.1.1 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/i386 4.118 || Edwin 3.116

1 ]=> ((lambda (x) (+ x x)) (* 3 4))

;Value: 24

1 ]=> (let ((double (lambda (x) (+ x x))))
(list (double (* 3 4))
      (double (/ 99 11))
      (double (- 2 7))))

;Value 11: (24 18 -10)

1 ]=> (let ((double-cons (lambda (x) (cons x x)))) (double-cons 'a))

;Value 12: (a . a)

1 ]=> (let ((double-any (lambda (f x) (f x x)))) (list (double-any + 13) (double-any cons 'a)))

;Value 13: (26 (a . a))

1 ]=> (let ((x 'a)) (let ((f (lambda (y) (list x y)))) (f 'b)))

;Value 14: (a b)

1 ]=> (let ((f (let ((x 'sam)) (lambda (y z) (list x y z))))) (f 'i 'am))

;Value 15: (sam i am)

1 ]=> (let ((f (let ((x 'sam)) (lambda (y z) (list x y z))))) )

;Ill-formed special form: (let (...))
;To continue, call RESTART with an option number:
; (RESTART 1) => Return to read-eval-print level 1.

2 error> (restart 1)

;Abort!

1 ]=> (let ((f (let ((x 'sam)) (lambda (y z) (list x y z))))) 
(let ((x 'not-sam)) (f 'i 'am)))

;Value 16: (sam i am)

1 ]=> ; the following are equivalent
()

;Value: ()

1 ]=> (let ((x 'a)) (cons x x))

;Value 17: (a . a)

1 ]=> ((lambda (x) (cons x x)) 'a)

;Value 18: (a . a)

1 ]=> (let ((f (lambda x x))) (f 1 2 3 4))

;Value 19: (1 2 3 4)

1 ]=> (let ((f (lambda x x))) (f))

;Value: ()

1 ]=> (let ((g (lambda (x . y) (list x y)))) (g 1 2 3 4))

;Value 20: (1 (2 3 4))

1 ]=> (let ((h (lambda (x y . z) (list x y z)))) (h 'a 'b 'c 'd))

;Value 21: (a b (c d))

1 ]=> (let ((f (lambda x (cons 'a x)))) (f 1 2 3))

;Value 22: (a 1 2 3)

1 ]=> 