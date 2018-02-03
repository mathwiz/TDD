;; (listof Natural) -> Natural
;; add the elements of the tuple
(define (addtup tup) 
  (cond ((null? tup) 0) 
        (else
         (o+ (car tup) 
             (addtup (cdr tup))))))



