#lang racket
(define a '(1 2 3))
(define b '(4 5 6))
(cdr a)
(define (appendelem xs e)
  (cond
    ((empty? xs) (cons e empty))
    (else (cons (car xs) (appendelem (cdr xs) e)))
    )
  )
(appendelem a 99)

(define (appendlists xs ys)
  (cond
    ((empty? xs) ys)
    (else (cons (car xs) (append (cdr xs) ys)))
    )
  )

(appendlists a b)