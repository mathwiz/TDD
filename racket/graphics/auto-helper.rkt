#lang racket

(define (recycle-list len acc seed)
  (cond ((<= len 0)             acc)
        ((< (- len (length seed)) 0) (append acc (take seed len)))
        (else                      (recycle-list (- len (length seed)) (append acc seed) seed))))


(define (make-row n pat)
  (recycle-list n empty pat))