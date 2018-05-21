;; (listof X) (listof X) -> Boolean
;; Produce true if a and b are equal sets
(define (eqset? a b) 
  (and (subset? a b) 
       (subset? b a)))




