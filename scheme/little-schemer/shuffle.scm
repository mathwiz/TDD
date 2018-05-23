;; Oneof: Pair, Atom -> Oneof: Pair, Atom
;; Reverse the pairs in pora. The second element must
;; be an atom for the function to terminate.
(define (shuffle pora) 
  (cond ((atom? pora) pora) 
        ((a-pair? (first pora)) 
         (shuffle (revpair pora))) 
        (else (build (first pora) 
                     (shuffle (second pora))))))





