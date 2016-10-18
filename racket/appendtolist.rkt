#lang racket
(define a '(1 2 3))
(cdr a)
(define (append xs e)
  (cond
    ((empty? xs) (cons e empty))
    (else (cons (car xs) (append (cdr xs) e)))
    )
  )
(append a 99)
                 