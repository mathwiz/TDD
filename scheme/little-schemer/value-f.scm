;; Aexp -> Atom
;; Produce the atom in an arithmetic expression that is the operator
(define (operator aexp) 
  (car aexp))




;; Atom -> Function
;; Produce the function represented by a
(define (atom-to-function a) 
  (cond ((eq? a (quote +)) o+) 
        ((eq? a (quote *)) o*) 
        (else o^)))




;; Aexp -> Aexp
;; Self explanatory helpers to extract arithmetic expressions
(define (1st-sub-exp aexp) 
  (second aexp))

(define (2nd-sub-exp aexp) 
  (third aexp))




;; Aexp -> Number
;; Produce the value of the arithmetic expression
(define (value2 aexp) 
  (cond ((atom? aexp) aexp) 
        (else ((atom-to-function (operator aexp)) 
               (value2 (1st-sub-exp aexp)) 
               (value2 (2nd-sub-exp aexp))))))



