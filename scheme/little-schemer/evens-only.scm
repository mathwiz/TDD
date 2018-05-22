;; (listof Sexp) -> (listof Sexp)
;; Produce the nested list with odd numbers removed
(define (evens-only* l) 
  (cond ((null? l) 
         '()) 
        ((atom? (car l)) 
         (cond ((even? (car l)) 
                (cons (car l) 
                      (evens-only* (cdr l)))) 
               (else (evens-only* (cdr l))))) 
        (else (cons (evens-only* (car l)) 
                    (evens-only* (cdr l))))))




;; (listof Sexp) -> (Function (listof Sexp) Number Number)
;; Do evens-only* and apply function to resultlist,
;; product of evens, and sum of odds
(define (evens-only*&co l col) 
  (cond ((null? l) 
         (col '() 1 0)) 
        ((atom? (car l)) 
         (let ((head (car l))) 
           (cond ((even? (car l)) 
                  (evens-only*&co (cdr l) 
                                  (lambda (newl prod sum) 
                                    (col (cons head newl) 
                                         (o* head prod) sum)))) 
                 (else (evens-only*&co (cdr l) 
                                       (lambda (newl prod sum) 
                                         (col newl prod (o+ head sum)))))))) 
        (else 
         (let ((head (car l)) 
               (tail (cdr l))) 
           (evens-only*&co head 
                           (lambda (al ap as) 
                             (evens-only*&co tail 
                                             (lambda (dl dp ds) 
                                               (col (cons al dl) 
                                                    (o* ap dp) 
                                                    (o+ as ds))))))))))





;; (listof Sexp) -> (listof (listof Sexp) Number Number)
;; Do evens-only*&co by collecting result list with product and sum
(define (evens-only*withEvenProdAndOddSum l) 
  (evens-only*&co l 
                  (lambda (newl p s) 
                    (list newl p s))))




