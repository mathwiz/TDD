;; Oneof: Pair, Atom -> Oneof: Pair, Atom
;; Given a pair, produce the pair where the first element
;; is reduced to an atom. Given an atom, return it.
(define (align pora) 
  (cond ((atom? pora) pora) 
        ((a-pair? (first pora)) 
         (align (shift pora))) 
        (else (build (first pora) 
                     (align (second pora))))))




