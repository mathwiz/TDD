;; Atom Atom -> Boolean
;; produce true if a and b are the same atom or number
(define (eqan? a b) 
  (cond ((and 
          (number? a) 
          (number? b)) 
         (= a b)) 
        ((or 
          (number? a) 
          (number? b)) #f) 
        (else (eq? a b))))




