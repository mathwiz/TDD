;; Natural Natural -> Natural
;; produce the integer quotient
(define (o/ n m) 
  (cond ((o< n m) 0) 
        (else (add1 (o/ (o- n m) m)))))



