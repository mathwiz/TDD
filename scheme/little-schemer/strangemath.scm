;; Number -> Number
;; Implement the Collatz function
(define (Collatz n) 
  (cond ((one? n) 1) 
        ((even? n) 
         (Collatz (o/ n 2))) 
        (else (Collatz (add1 (o* 3 n))))))




;; Number Number -> Number
;; Implement the Ackermann function
(define (Ackermann n m) 
  (cond ((zero? n) 
         (add1 m)) 
        ((zero? m) 
         (Ackermann (sub1 n) 1)) 
        (else (Ackermann (sub1 n) 
                         (Ackermann n (sub1 m))))))





