;; Sexp (listof X) -> (listof X)
;; Produce list where first instance of a is removed from l
(define (rember2-eq? a l) 
  ((insert-f eq? 
             (lambda (new old l) 
               l)) a #f l))




;; Sexp (listof X) -> (listof X)
;; Produce list where first instance of a is removed from l
(define (rember2-equal? a l) 
  ((insert-f equal? 
             (lambda (new old l) 
               l)) a #f l))




