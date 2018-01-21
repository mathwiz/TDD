;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluralize) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; String -> String
;; Produce the given string with "s" added to the end.
(check-expect (pluralize "cat") "cats")
(check-expect (pluralize "dog") "dogs")
(check-expect (pluralize "grass") "grasss")

;(define (pluralize str) "") ;stub
;
;(define (pluralize str) ;template
;  (... str))

(define (pluralize str) ;template
  (string-append str "s"))
