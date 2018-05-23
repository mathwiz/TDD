;; X -> ?
;; Never return
(define (eternity x) 
  (eternity x))




;; (listof X) -> Number
;; Produce the length of a zero length list
(define length0 
  ((lambda 
       (f) 
     (lambda (l) 
       (cond ((null? l) 0) 
             (else (add1 (f (cdr l))))))) eternity))





;; (listof X) -> Number
;; Produce the length of a zero or 1 length list
(define length<=1 
  ((lambda 
       (f) 
     (lambda (l) 
       (cond ((null? l) 0) 
             (else (add1 (f (cdr l))))))) 
   ((lambda 
        (f) 
      (lambda (l) 
        (cond ((null? l) 0) 
              (else (add1 (f (cdr l))))))) eternity)))





;; (listof X) -> Number
;; Produce the length of a zero or 1 or 2 length list
(define length<=2 
  ((lambda 
       (f) 
     (lambda (l) 
       (cond ((null? l) 0) 
             (else (add1 (f (cdr l))))))) 
   ((lambda 
        (f) 
      (lambda (l) 
        (cond ((null? l) 0) 
              (else (add1 (f (cdr l))))))) 
    ((lambda 
         (f) 
       (lambda (l) 
         (cond ((null? l) 0) 
               (else (add1 (f (cdr l))))))) eternity))))





;; (listof X) -> Number
;; Produce the length of a zero or 1 or 2 or 3 length list
;; using a maker function that takes a function and calls it
;; the appropriate number of times
(define length<=3 
  ((lambda 
       (mk-length) 
     (mk-length (mk-length (mk-length (mk-length eternity))))) 
   (lambda (f) 
     (lambda (l) 
       (cond ((null? l) 0) 
             (else (add1 (f (cdr l)))))))))





;; (listof X) -> Number
;; Have we generalized completely?
(define length<inf 
  ((lambda 
       (mk-length) 
     (mk-length mk-length)) 
   (lambda (f) 
     (lambda (l) 
       (cond ((null? l) 0) 
             (else (add1 ((f f) 
                          (cdr l)))))))))





;; (listof X) -> Number
;; Another way with wrapping function
(define length<inf2 
  ((lambda 
       (le) 
     ((lambda 
          (mk-length) 
        (mk-length mk-length)) 
      (lambda (mk-length) 
        (le 
         (lambda (x) 
           ((mk-length mk-length) x)))))) 
   (lambda (length) 
     (lambda (l) 
       (cond ((null? l) 0) 
             (else (add1 (length (cdr l)))))))))




;; Function -> Function
;; The Y-Combinator
(define y-comb 
  (lambda (le) 
    ((lambda 
         (f) 
       (f f)) 
     (lambda (f) 
       (le 
        (lambda (x) 
          ((f f) x)))))))




;; (listof X) -> Number
;; Best? Uses the y-combinator pattern
(define length<inf3
  (y-comb 
   (lambda (length) 
     (lambda (l) 
       (cond ((null? l) 0) 
             (else (add1 (length (cdr l)))))))))





;; (listof X) -> Number
;; Bestest? Uses named arg in define as usual
(define (length<inf4 thelist) 
  ((y-comb 
    (lambda (length) 
      (lambda (l) 
        (cond ((null? l) 0) 
              (else (add1 (length (cdr l)))))))) thelist))





