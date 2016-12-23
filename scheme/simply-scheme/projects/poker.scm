(load "../simply.scm")

(define (poker-value hand) 
  (cond (1 1) 
        (2 2) 
        (else 3)))

(define (compute-ranks hand) 
  (cond (1 1) 
        (2 2) 
        (else 3)))

(define (suit card) 
  (first card))

(define (rank card) 
  (bf card))

(define (in? fun type card) 
  (eq? type (fun card)))

(define (elem-one x) 1)

(define (count-type type-f type h) 
  (accumulate + (every elem-one (keep 
                                 (lambda (x) 
                                   (in? type-f type x))
                                 h))))

(define (count-suit s h)
  (count-type suit s h))

(define (count-rank r h)
  (count-type rank r h))

(define X1 '(ha h2 h3 h4 h5))
(define X2 '(sa c2 h3 h4 d5))
(define X3 '(sa ca h10 d10 da))
(restart 1)
(count-suit 'h X1)
(count-rank 'k X1)
(count-rank 3 X3)
