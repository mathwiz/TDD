;; (listof (listof X)) -> (listof X)
;; Produce list of the first elements of a list of lists
(define (firsts l) 
  (cond ((null? l) 
         '()) 
        (else (cons (car (car l)) 
                    (firsts (cdr l))))))



