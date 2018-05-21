;; (listof Pair) -> Boolean
;; Produce true if rel is a one-to-one function
(define (one-to-one? rel) 
  (and (fun? rel) 
       (fun? (revrel rel))))



