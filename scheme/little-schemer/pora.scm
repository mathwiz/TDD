;; Oneof: Pair, Atom -> Number
;; Calculate the length of pora
(define (length* pora) 
  (cond ((atom? pora) 1) 
        (else (o+ (length* (first pora)) 
                  (length* (second pora))))))




;; Oneof: Pair, Atom -> Number
;; Calculate the weight of pora
(define (weight* pora) 
  (cond ((atom? pora) 1) 
        (else (o+ (o* (weight* (first pora)) 2) 
                  (weight* (second pora))))))





