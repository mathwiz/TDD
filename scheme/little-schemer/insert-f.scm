;; Predicate Function -> Function
;; Produce function that does insert using test? to decide
;; location and seqfun to put new item to left or right in l
(define (insert-f test? seqfun) 
  (lambda (old new l) 
    (cond ((null? l) 
           '()) 
          ((test? (car l) old) 
           (seqfun new (car l) 
                   (cdr l))) 
          (else (cons (car l) 
                      ((insert-f test? seqfun) old new (cdr l)))))))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert left with eq?
(define (insertL-eq? old new l) 
  ((insert-f eq? seqL) old new l))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert right with eq?
(define (insertR-eq? old new l) 
  ((insert-f eq? seqR) old new l))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert right with equal?
(define (insertR-equal? old new l) 
  ((insert-f equal? seqR) old new l))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert left with equal?
(define (insertL-equal? old new l) 
  ((insert-f equal? seqL) old new l))




