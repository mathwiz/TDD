;; Pred Function -> Function
;; Produce a function that inserts multiple times
(define (multiinsert-f pred seqfun) 
  (lambda (old new l) 
    (cond ((null? l) 
           '()) 
          ((pred (car l)) 
           (seqfun new old ((multiinsert-f pred seqfun) old new (cdr l)))) 
          (else (cons (car l) 
                      ((multiinsert-f pred seqfun) old new (cdr l)))))))




;; S-exp S-exp (listof X) -> (listof X)
;; Produce a new list where every instance of old has new added
;; to its left
(define (multiinsertL old new l) 
  ((multiinsert-f (equal?-c old) seqL) old new l))





;; S-exp S-exp (listof X) -> (listof X)
;; Produce a new list where every instance of old has new added
;; to its right
(define (multiinsertR old new l) 
  ((multiinsert-f (equal?-c old) seqR) old new l))




;; S-exp S-exp (listof X) -> (listof X)
;; Produce a new list where every instance of old
;; is substituted with new
(define (multisubst old new l) 
  ((multiinsert-f (equal?-c old) 
                  (lambda (a b c) 
                    (cons a c))) old new l))





