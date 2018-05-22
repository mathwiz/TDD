;; Predicate -> Function
;; Produce function that produces the list that removes
;; the first instance of sexp by using test? to decide
(define (rember-f test?) 
  (lambda (sexp l) 
    (cond ((null? l) 
           '()) 
          ((test? sexp (car l)) 
           (cdr l)) 
          (else (cons (car l) 
                      ((rember-f test?) sexp (cdr l)))))))





;; Sexp (listof X) -> (listof X)
;; Do rember using eq? to test
(define (rember-eq? sexp l) 
  ((rember-f eq?) sexp l))




;; Sexp (listof X) -> (listof X)
;; Do rember using equal? to test
(define (rember-equal? sexp l) 
  ((rember-f equal?) sexp l))




