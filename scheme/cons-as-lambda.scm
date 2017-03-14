(define (kcons x y) 
  (lambda (arg) 
    (cond ((equal? arg 'car) x) 
          ((equal? arg 'cdr) y) 
          (else 
           (error 
            "Bad message to CONS"
            arg)))))

(define (kar pair) 
  (pair 'car))

(define (kdr pair)
  (pair 'cdr))
