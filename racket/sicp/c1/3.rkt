#lang racket
;; Number Number Number -> Number
;; Sum of squares of 2 larger of 3 numbers
;(define (sum-sq-3 x y z)
;  (... x y z))
(define (sum-sq-3 x y z)
  (cond ((and (<= x z) (<= x y)) (+ (sqr z) (sqr y)))
        ((and (<= y z) (<= y x)) (+ (sqr x) (sqr z)))
        ((and (<= z x) (<= z y)) (+ (sqr x) (sqr y))))
  )

(sum-sq-3 2 3 4)
(sum-sq-3 2 4 3)
(sum-sq-3 3 2 4)
(sum-sq-3 3 4 2)
(sum-sq-3 4 3 2)
(sum-sq-3 4 2 3)
(sum-sq-3 5 3 4)
(sum-sq-3 2 2 2)