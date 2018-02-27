;; Atom Atom (listof X) -> (listof X)
;; insert new to the left of old in all sublists of l
(define (insertL* old new l) 
  (cond ((null? l) 
         (quote ())) 
        ((atom? (car l)) 
         (cond ((eq? (car l) old) 
                (cons new (cons old (insertL* old new (cdr l))))) 
               (else (cons (car l) 
                           (insertL* old new (cdr l)))))) 
        (else (cons (insertL* old new (car l)) 
                    (insertL* old new (cdr l))))))



