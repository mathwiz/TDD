;; (listof X) (listof X) -> Boolean
;; Produce true if any members of a are in b
(define (intersect? a b) 
  (cond ((null? a) #f) 
        (else (or (member? (car a) b) 
                  (intersect? (cdr a) b)))))




