;; Atom (listof X) -> Natural
;; produce the number of times a appears in lox
(define (occurs a lox)
  (cond ((null? lox) 0)
        ((eq? a (car lox)) 
         (add1 (occurs a (cdr lox))))
        (else
         (occurs a (cdr lox)))))




