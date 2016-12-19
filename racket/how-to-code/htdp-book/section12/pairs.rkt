;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pairs) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; list-of-letters -> list-of-pairs
;; Produce a list of all of the pairs given a list of symbols

(define (pairs xs)
  (cond ((empty? xs) empty)
        (else (cons (first xs) (pairs (rest xs))))))

(define (make-pairs x xs)
  (cond ((empty? xs) empty)
        (else (cons (list x (first xs)) (make-pairs x (rest xs))))))

(make-pairs 'a (list 'b 'c))

(pairs (list 'a 'b 'c))