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




