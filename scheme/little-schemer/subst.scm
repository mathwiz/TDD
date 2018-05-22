;; Sexp Sexp (listof X) -> (listof X)
;; Produce list where old is replaced by new
(define (subst-eq? old new l) 
  ((insert-f eq? 
             (lambda (new old l) 
               (cons new l))) old new l))




;; Sexp Sexp (listof X) -> (listof X)
;; Produce list where old is replaced by new
(define (subst-equal? old new l) 
  ((insert-f equal? 
             (lambda (new old l) 
               (cons new l))) old new l))




