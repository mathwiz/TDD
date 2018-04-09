;; S-exp -> Boolean
;; Produce true if aexp contains only numbers and  +, *, ^
(define (numbered? aexp) 
  (cond ((atom? aexp) 
         (number? aexp)) 
        (else (and (numbered? (car aexpt)) 
                   (numbered? (car (cdr (cdr aexp))))))))




;; S-exp -> Number
;; Produce the numeric value of aexp
(define (value nexp) 
  (cond ((atom? nexp) nexp) 
        ((eq? (car (cdr nexp)) 
              (quote +)) 
         (o+ (value (car nexp)) 
             (value (car (cdr (cdr nexp))))))
        ((eq? (car (cdr nexp)) 
              (quote *)) 
         (o* (value (car nexp)) 
             (value (car (cdr (cdr nexp))))))
        ((eq? (car (cdr nexp)) 
              (quote ^)) 
         (o^ (value (car nexp)) 
             (value (car (cdr (cdr nexp))))))))




