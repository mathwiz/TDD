;; Natural Natural -> Natural
;; version of binary - using sub1 and add1
(define o- 
  (lambda (n m) 
    (cond ((zero? m) n) 
          (else
           (sub1 (o- n (sub1 m)))))))


