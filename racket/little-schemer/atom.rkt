#lang racket

;; Object -> Boolean
;; Return true if object is an atom
(define (atom? o)
  (not (list? o)))

(atom? (quote ()))
