;; Sexp Sexp Sexp (listof X) -> (listof X)
;; Produce list where
;; each instance of oldL has new inserted to the left
;; and each instanace of oldR has new inserted to the right
(define (multiinsertLR oldL oldR new l) 
  (multiinsertR oldR new (multiinsertL oldL new l)))




;; Sexp Sexp Sexp (listof X) Function
;; -> (Function (listof X) Number Number)
;; Do the same thing but collect the number of L and R insertions
(define (multiinsertLR&co oldL oldR new l col) 
  (cond ((null? l) 
         (col '() 0 0)) 
        ((equal? (car l) oldL) 
         (multiinsertLR&co oldL oldR new (cdr l) 
                           (lambda (newl L R) 
                             (col (cons new (cons oldL newl)) 
                                  (add1 L) R)))) 
        ((equal? (car l) oldR) 
         (multiinsertLR&co oldL oldR new (cdr l) 
                           (lambda (newl L R) 
                             (col (cons oldR (cons new newl)) L (add1 R))))) 
        (else 
         (let ((head (car l))) 
           (multiinsertLR&co oldL oldR new (cdr l) 
                             (lambda (newl L R) 
                               (col (cons head newl) L R)))))))





;; Sexp Sexp Sexp (listof X) -> (listof (listof X) Number Number)
;; Do left and right insertion and return the number of each performed
(define (multiinsertLRwithCount oldL oldR new l) 
  (multiinsertLR&co oldL oldR new l 
                    (lambda (newl L R) 
                      (list newl L R (quote total=) (+ L R)))))




