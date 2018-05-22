;; Atom -> Function
;; Produce a function that compares its arg to a
(define (eq?-c a)
  (lambda (arg) (eq? arg a)))




;; Atom -> Function
;; Produce a function that compares its arg to a
(define (equal?-c a)
  (lambda (arg) (equal? arg a)))



 
