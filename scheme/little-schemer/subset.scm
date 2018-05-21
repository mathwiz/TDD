;; (listof X) (listof X) -> Boolean
;; Produce true if all members of a are in b
(define (subset? a b) 
  (cond ((null? a) #t) 
        (else (and (member? (car a) b) 
                   (subset? (cdr a) b)))))




