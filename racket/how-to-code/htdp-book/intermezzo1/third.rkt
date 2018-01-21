;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname third) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Step through the following

(define RADIUS 10)
(define PI 3.14)
(define DIAMETER (* 2 RADIUS))
(define CIRCUMFERENCE (* PI DIAMETER))
(define AREA (* PI RADIUS RADIUS))
(define VOLUME (/ (* 4 PI RADIUS RADIUS RADIUS) 3))

(define PRICE 5)
(define SALES-TAX (* .08 PRICE))
(define TOTAL (+ PRICE SALES-TAX))
  
