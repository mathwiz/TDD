#lang racket
(provide (all-defined-out))

(define sequence
  (lambda (low high stride)
    (cons low
     (cond [(> (+ low stride) high) null]
           [#t (sequence (+ low stride) high stride)]))))

(define string-append-map 
  (lambda (xs suffix)
    (map (lambda (s) (string-append s suffix)) xs)))

(define list-nth-mod 
  (lambda (xs n)
    (cond [(< n 0) (error "list-nth-mod: negative number")]
          [(null? xs) (error "list-nth-mod: empty list")]
          [#t (car (list-tail xs (remainder n (length xs))))])))

(define stream-for-n-steps
  (lambda (s n)
    (cons (car (s))
          (cond [(= n 1) null]
                [#t (stream-for-n-steps (cdr (s)) (- n 1))]))))

(define nats
  (letrec ([f (lambda (x) (cons x (lambda () (f (+ x 1)))))])
    (lambda () (f 1))))

(define funny-number-stream
  (letrec ([f (lambda (x) (cons x (lambda () (f (g (+ x 1))))))]
           [g (lambda (x) (cond [(= (remainder x 5) 0) (* x -1)]
                                [(< x 0) (+ (* x -1) 2)]
                                [#t x]))])
    (lambda () (f 1))))

(define dan-then-dog
  (letrec ([f (lambda (x) (cons x (lambda () (f (cond [(string=? x "dan.jpg") "dog.jpg"]
                                                      [#t "dan.jpg"])))))])
    (lambda () (f "dan.jpg"))))

(define stream-add-zero
    (lambda (s)
      (letrec ([f (lambda (x) (cons 0 x))])
        (lambda () (cons (f (car (s))) (stream-add-zero (cdr (s))))))))

(define test 
  (lambda (x)
    (stream-for-n-steps (stream-add-zero nats) x)))
               