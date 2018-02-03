;; S-exp S-exp -> Boolean
;; produce true if a and b are the same S-expression
(define (equal? a b) 
  (cond ((and 
          (atom? a) 
          (atom? b)) 
         (eqan? a b)) 
        ((or 
          (atom? a) 
          (atom? b))
         #f) 
        (else (eqlist? a b))))



