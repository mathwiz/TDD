;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

;; Image Image -> Boolean
;; Compare two images and return true if first is larger than second
(check-expect (larger? (circle 10 "solid" "red") (circle 9 "solid" "red")) true) 
(check-expect (larger? (circle 10 "solid" "red") (circle 19 "solid" "red")) false) 
(check-expect (larger? (circle 10 "solid" "red") (rectangle 20 20 "outline" "black")) false) 
(check-expect (larger? (circle 20 "solid" "red") (rectangle 20 20 "outline" "black")) true) 

;(define (larger? this that) false) ; stub

;(define (larger? this that)
;  (... this that))

(define (larger? this that)
  (>  (* (image-width this) (image-height this)) 
      (* (image-width that) (image-height that))))
