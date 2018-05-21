;; (listof Pair) -> Boolean
;; Produce true if rel is a function
(define (fun? rel)
  (set? (firsts rel)))



