;; (listof X) (listof X) -> (listof X)
;; Produce new set with all members of a not in b
(define (difference a b) 
  (cond ((null? a) '()) 
        ((member? (car a) b) 
         (difference (cdr a) b)) 
        (else (cons (car a) 
                    (difference (cdr a) b)))))




