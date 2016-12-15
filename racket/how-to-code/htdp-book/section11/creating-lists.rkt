;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname creating-lists) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; integer integer -> integer
;; Produce a random number between 0 and less than the difference of n from m
;; then add that value to n
;; Assume n < m
(check-expect (>= (random-n-m 10 4) 4) true) 

;(define (random-n-m n m) 0) ; stub
(define (random-n-m n m) 
  (... n m))
