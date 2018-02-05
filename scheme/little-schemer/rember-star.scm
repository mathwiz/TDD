;; Atom (listof X) -> (listof X)
;; produce list where a is removed from all sublists
(define (rember* a l) 
  (cond ((null? l) 
         (quote ())) 
        ((atom? (car l)) 
         (cond ((eq? (car l) a) 
                (rember* a (cdr l))) 
               (else (cons (car l) 
                           (rember* a (cdr l))))))
        (else (cons (rember* a (car l)) 
                    (rember* a (cdr l))))))




