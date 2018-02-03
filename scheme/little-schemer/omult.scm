;; Natural Natural -> Natural
;; alternative to multiply
(define (o* n m)
  (cond ((zero? m) 0)
        (else
         (o+ n (o* n (sub1 m))))))




