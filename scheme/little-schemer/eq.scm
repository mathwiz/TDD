;; Natural Natural -> Boolean
;; produce true if n = m
(define (o= n m)
  (cond ((zero? m) (zero? n))
        ((zero? n) #f)
        (else
         (o= (sub1 n)
             (sub1 m)))))



