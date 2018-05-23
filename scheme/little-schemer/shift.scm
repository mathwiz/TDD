;; (pairof Pair X) -> (pairof X Pair)
;; Produce a new Pair by moving the second element
;; of the first Pair to a Pair with the second element
;; of the top-level Pair
(define (shift p) 
  (build (first (first p)) 
         (build (second (first p)) 
                (second p))))





