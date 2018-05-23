;; Symbol Number (listof X) -> Boolean
;; Recursively do the algorithm described in looking
(define (keep-looking a sorn l) 
  (cond ((number? sorn) 
         (keep-looking a (pick sorn l) l)) 
        (else (equal? a sorn))))




;; Symbol (listof X) -> Boolean
;; Produce true if the a is encountered by traversing
;; l by visiting the 1-based index in l given by the
;; elements of l (starting with 1)
;;
;; (looking 'caviar '(6 2 4 caviar 5 7 3)) -> #t
;; (looking 'caviar '(6 2 grits caviar 5 7 3)) -> #f
(define (looking a l) 
  (keep-looking a (pick 1 l) l))





