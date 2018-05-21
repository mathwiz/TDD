;; (listof X) -> Boolean
;; Produce true iff l has exactly 2 s-exp
(define (a-pair? l) 
  (cond ((atom? l) #f) 
        ((null? l) #f) 
        ((null? (cdr l)) #f) 
        ((null? (cdr (cdr l)))) 
        (else #f)))




