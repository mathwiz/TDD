(define (kons x y) 
  (lambda (arg) 
    (cond ((equal? arg 'car) x) 
          ((equal? arg 'cdr) y) 
          (else 
           (error 
            "Bad message to KONS"
            arg)))))

(define (kar pair) 
  (pair 'car))

(define (kdr pair)
  (pair 'cdr))
