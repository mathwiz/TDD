(define (halve n)
  (/ n 2))

(define (double n)
  (* n 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (mult-invariant a b acc)
  (cond ((= b 0) acc)
        ((even? b) (mult-invariant (double a) (halve b) acc))
        (else (mult-invariant a (- b 1) (+ acc a)))))

(define (times a b)
  (mult-invariant a b 0))
