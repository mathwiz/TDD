;; Object -> Boolean
;; Return true if object is an atom
(define atom? 
  (lambda (x) 
    (and (not (pair? x)) 
         (not (null? x)))))

;; Natural -> Natural
;; Produce new natural number one larger than input

(define (add1 n) (+ n 1))

;; Natural -> Natural
;; Produce number one less than input

(define (sub1 n) (- n 1))

;; List -> Boolean
;; produce true if all elements of a list a atoms
(define lat? 
  (lambda (l) 
    (cond ((null? l) #t) 
          ((atom? (car l)) 
           (lat? (cdr l))) 
          (else #f))))
