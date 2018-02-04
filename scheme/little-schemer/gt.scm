;; Natural Natural -> Boolean
;; produce true if n > m
(define (o> n m)
  (cond ((zero? n) #f)
        ((zero? m) #t)
        (else
         (o> (sub1 n)
             (sub1 m)))))



