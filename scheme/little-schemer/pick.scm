;; Natural (listof X) -> X
;; produce the element at pos (starting at 1) or false
(define (pick pos lox) 
  (cond ((or 
          (= 0 pos) 
          (null? lox)) false) 
        ((= 1 pos) 
         (car lox))
        (else 
(pick (sub1 pos) (cdr lox)))))




