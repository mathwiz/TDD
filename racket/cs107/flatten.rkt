#lang racket
(define (flatten seq)
  (if (not (list? seq)) (list seq)
      (cdr seq)))