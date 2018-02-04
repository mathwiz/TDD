;; Natural (listof X) -> (listof X)
;; produce a list that removes the nth element of lox
(define (rempick n lox) 
  (cond ((one? n) 
         (cdr lox)) 
        (else (cons (car lox) 
                    (rempick (sub1 n) 
                             (cdr lox))))))




