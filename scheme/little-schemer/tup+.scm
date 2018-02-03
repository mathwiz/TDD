;; Tuple Tuple -> Tuple
;; produce the pairwise addition of 2 tuples of the same length
(define (tup+ a b) 
  (cond ((null? a) b)
        ((null? b) a) 
        (else (cons (o+ (car a) 
                        (car b)) 
                    (tup+ (cdr a) 
                          (cdr b))))))



