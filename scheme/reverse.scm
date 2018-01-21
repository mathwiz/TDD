(define (reverse a) 
  (cond ((null? a) a) 
        (else (append (reverse (cdr a)) 
                      (list (car a))))))

(define a (list 1 2 3 4))
(reverse a)
(reverse '())
