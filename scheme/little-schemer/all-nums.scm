;; (listof X) -> (listof X)
;; produce a list that contains only numbers
(define (all-nums lox) 
  (cond ((null? lox) 
         (quote ())) 
        ((number? (car lox)) 
         (cons (car lox) 
               (all-nums (cdr lox)))) 
        (else (all-nums (cdr lox)))))




