;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname fourth) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Comment out illegal sentences

(define-struct personnel-record (name salary dob ssn))
(define-struct oops ())
;(define-struct child (dob date (= date dob)))
;(define-struct (child person) (dob date))
(define-struct child (parents dob date))

(define-struct point (x y z))
(make-point 1 2 3)
(make-point (make-point 1 2 3) 4 5)
(make-point (+ 1 2) 3 4)

(define-struct ball (x y speed-x speed-y))
(number? (make-ball 1 2 3 4))
(ball-speed-y (make-ball (+ 1 2) (+ 3 3) 2 3))
(ball-y (make-ball (+ 1 2) (+ 3 3) 2 3))
;(number? (make-ball 1 3 4))
;(ball-x (make-posn 1 2))
;(ball-speed-y 5)