MIT/GNU Scheme running under GNU/Linux
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO warranty; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Sunday February 7, 2016 at 10:30:06 AM
  Release 9.1.1 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/i386 4.118 || Edwin 3.116

1 ]=> (let ((x 2)) (+ x 3))

;Value: 5

1 ]=> (let ((y 3)) (+ 2 y))

;Value: 5

1 ]=> (let ((x 2) (y 3)) (+ x y))

;Value: 5

1 ]=> (let ((a (* 4 4))) (+ a a))

;Value: 32

1 ]=> (let ((list1 '(a b c)) (list2 '(d e f)))
(cons (cons (car list1) (car list2))
      (cons (car (cdr list1)) (car (cdr list2)))))

;Value 11: ((a . d) b . e)

1 ]=> (let ((f +)) (f 2 3))

;Value: 5

1 ]=> (let ((f +) (x 2)) (f x 3))

;Value: 5

1 ]=> (let ((f +) (x 2) (y 3)) (f x y))

;Value: 5

1 ]=> (let ((+ *)) (+ 2 3))

;Value: 6

1 ]=> (+ 2 3)

;Value: 5

1 ]=> (let ((a 4) (b -3))
(let ((a-squared (* a a)) (b-squared (* b b)))
(+ a-squared b-squared)))

;Value: 25

1 ]=> (let ((x 1)) (let ((x (+ x 1))) (+ x x)))

;Value: 4

1 ]=> (let ((x 1)) (let ((new-x (+ x 1))) (+ new-x new-x)))

;Value: 4

1 ]=> 