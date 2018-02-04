;; (listof X) -> Natural
;; produce the length of lox
(define (len lox)
  (cond ((null? lox) 0)
        (else
         (add1 (len (cdr lox))))))



