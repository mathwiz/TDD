;; (listof X) (listof X) -> (listof X)
;; Produce interection of a and b
(define (intersection a b) 
  (cond ((null? a) 
         '()) 
        ((member? (car a) b) 
         (cons (car a) 
               (intersection (cdr a) b))) 
        (else (intersection (cdr a) b))))




