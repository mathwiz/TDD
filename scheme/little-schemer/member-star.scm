;; Atom (listof X) -> Boolean
;; produce true if a is an element of any sublist of l
(define (member* a l) 
  (cond ((null? l) 
         #f) 
        ((atom? (car l)) 
         (or (eq? a (car l)) 
             (member* a (cdr l)))) 
        (else (or (member* a (car l)) 
                  (member* a (cdr l))))))




