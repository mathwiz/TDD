;; Run with
;; racket -f flatten.rkt -i

(define a (cons 1 (cons 2 empty)))
(define b (cons 3 (cons 4 empty)))
(define c (cons 5 (cons 6 empty)))

(define xs (cons a (cons 0 empty)))
;xs

(define ys (cons 0 (cons a (cons -1 (cons (cons b (cons 99 (cons c empty))) (cons -2 (cons -3 empty)))))))
;ys

(define (flatten xs) 
  (cond 
    ((empty? xs) empty)
    ((pair? xs) (append (flatten (car xs)) (flatten (cdr xs))))
    (else (cons xs empty))
    )
  )

;(flatten ys)

