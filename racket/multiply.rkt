;; Use via (require "multiply.rkt")

#lang racket

(define (halve n)
  (/ n 2))

(define (double n)
  (* n 2))

(define (mult-invariant a b acc)
  (cond ((= b 0) acc)
        ((even? b) (mult-invariant (double a) (halve b) acc))
        (else (mult-invariant a (sub1 b) (+ acc a)))))

(define (times a b)
  (mult-invariant a b 0))

(provide (all-defined-out))
