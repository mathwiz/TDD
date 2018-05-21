;; (listof X) (listof X) -> (listof X)
;; Produce new set with all members of a and b
(define (union a b) 
  (cond ((null? a) b) 
        ((member? (car a) b) 
         (union (cdr a) b)) 
        (else (cons (car a) 
                    (union (cdr a) b)))))



