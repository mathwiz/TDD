;; Predicate -> Function
;; Produce the function that removes all occurrences of a from l
(define (multirember-f test?) 
  (lambda (a l) 
    (cond ((null? l) 
           '()) 
          ((test? a (car l)) 
           ((multirember-f test?) a (cdr l))) 
          (else (cons (car l) 
                      ((multirember-f test?) a (cdr l)))))))




;; Sexp (listof X) -> (listof X)
;; Remove all occurrences of a from l using eq?
(define (multirember-eq? a l) 
  ((multirember-f eq?) a l))




;; Sexp (listof X) -> (listof X)
;; Remove all occurrences of a from l using equal?
(define (multirember-equal? a l) 
  ((multirember-f equal?) a l))




;; For convenience
(define multirember multirember-equal?)




;; Predicate (listof X) -> (listof X)
;; Produce list where all occurrences of an S-exp are removed
;; from l using pred to match
(define (multiremberT pred l) 
  (cond ((null? l) 
         '()) 
        ((pred (car l)) 
         (multiremberT pred (cdr l))) 
        (else (cons (car l) 
                    (multiremberT pred (cdr l))))))




