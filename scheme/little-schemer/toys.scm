;; Do this first
(load "little.scm")
;; Check the load
(atom? (quote ()))

;; Ch 1: Toys
()
(car ()) ; error
(eq? 'a 'a) ; #t
(eq? "a" "a") ; #f
(eq? 1 1) ; #t
(define as (cons 'a (cons 'a (cons 'a ()))))
(eq? as as) ; #t
(eq? as (cons 'a (cons 'a (cons 'a ())))) ; #f
(eq? as (list 'a 'a 'a)) ; #f

;; Utilities
(restart 1)
