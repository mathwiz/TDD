;; S-exp -> Boolean
;; Produce true if aexp contains only numbers and  +, *, ^
(define (numbered? aexp) 
  (cond ((atom? aexp) 
         (number? aexp)) 
        (else (and (numbered? (car aexpt)) 
                   (numbered? (car (cdr (cdr aexp))))))))




