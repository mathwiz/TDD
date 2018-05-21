;; (listof X) -> Boolean
;; Produce true if the list is a set
(define 
  (set? l) 
  (cond ((null? l) #t)
        ((member? (car l) (cdr l)) #f)
        (else (set? (cdr l)))))




