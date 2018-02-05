;; Atom Atom (listof X) -> (listof X)
;; insert new to the right of old in all sublists of l
(define (insertR* old new l) 
  (cond ((null? l) 
         (quote ())) 
        ((atom? (car l)) 
         (cond ((eq? (car l) old) 
                (cons old (cons new (insertR* old new (cdr l))))) 
               (else (cons (car l) 
                           (insertR* old new (cdr l)))))) 
        (else (cons (insertR* old new (car l))
                    (insertR* old new (cdr l))))))




