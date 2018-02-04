;; Natural Natural -> Natural
;; produce the value of n ^ m
(define (o^ n m) 
  (cond ((zero? m) 1) 
        (else
         (o* n (o^ n (sub1 m))))))



