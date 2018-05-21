;; (listof Pair) -> (listof Pair)
;; Produce a new relation where each existing pair is reversed
(define (revrel rel) 
  (cond ((null? rel) 
         '()) 
        (else (cons (revpair (car rel)) 
                    (revrel (cdr rel))))))



