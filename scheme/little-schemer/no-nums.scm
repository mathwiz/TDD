;; (listof X) -> (listof X)
;; produce a list that does not contain any numbers
(define (no-nums lox) 
  (cond ((null? lox) 
         (quote ())) 
        ((number? (car lox)) 
         (no-nums (cdr lox)))  
        (else (cons (car lox) 
                    (no-nums (cdr lox))))))




