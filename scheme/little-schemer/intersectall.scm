;; (listof (listof X) -> (listof X)
;; Produce set that is intersection of all sets in l-set
(define (intersectall l-set) 
  (cond ((null? (cdr l-set)) 
         (car l-set)) 
        (else (intersection (car l-set) 
                            (intersectall (cdr l-set))))))




