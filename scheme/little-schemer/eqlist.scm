;; (listof X) (listof X) -> Boolean
;; produce true if a and b are the same list
(define (eqlist? a b) 
  (cond ((and 
          (null? a) 
          (null? b)) #t) 
        ((or 
          (null? a) 
          (null? b)) #f) 
        (else (and (equal? (car a) 
                           (car b)) 
                   (eqlist? (cdr a) 
                            (cdr b))))))




