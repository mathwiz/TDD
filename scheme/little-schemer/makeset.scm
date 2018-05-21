;; (listof X) -> (listof X)
;; Produce version of l with no repeats
(define (makeset l) 
  (cond ((null? l) 
         '()) 
        ((member? (car l) 
                  (cdr l)) 
         (makeset (cdr l))) 
        (else (cons (car l) 
                    (makeset (cdr l))))))




