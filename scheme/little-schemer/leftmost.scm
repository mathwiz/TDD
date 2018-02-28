;; (listof X) -> Atom
;; produce the leftmost element of a non-empty list
;; (which also does not contain empty lists)
(define (leftmost l) 
  (cond ((atom? (car l)) 
         (car l)) 
        (else (leftmost (car l)))))




