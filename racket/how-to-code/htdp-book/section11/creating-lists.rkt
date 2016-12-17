;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname creating-lists) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; integer integer -> integer
;; Produce a random number between n and m
;; then add that value to n
;; Assume n < m
(check-expect (>= (random-n-m 4 10) 4) true) 
(check-expect (< (random-n-m 4 10) 10) true) 

;(define (random-n-m n m) 0) ; stub
#;
(define (random-n-m n m) 
  (... n m))

(define (random-n-m n m) 
  (+ (random (- m n)) n))


;; integer -> (list integer)
;; Produce a list of numbers between 20 and 120 of given length
(check-expect (length (tie-dyed 0)) 0)
(check-expect (length (tie-dyed 4)) 4)

;(define (tie-dyed n) empty) ; stub
#;
(define (tie-dyed n)
  (cond ((... n) ...)
        (else ...)))

(define (tie-dyed n)
  (cond ((zero? n) empty)
        (else (cons (random-n-m 20 (add1 120)) (tie-dyed (sub1 n))))))


;; Natural Integer Integer -> (list Integer)
;; Produce list of integers between low and high of length n
(check-expect (length (create-temps 0 20 120)) 0)
(check-expect (length (create-temps 50 20 120)) 50)

;(define (create-temps n low high) empty)
#;
(define (create-temps n low high) 
  (cond ((zero? n) empty)
        (else (cons (...) (...)))))

(define (create-temps n low high) 
  (cond ((zero? n) empty)
        (else (cons (random-n-m low (add1 high)) (create-temps (sub1 n) low high)))))


;; Natural -> (list Number)
;; Produce list of prices that are n increments of dimes starting from $.10 and no greater than $10.00
(check-expect (length (create-prices 0)) 0)
(check-expect (length (create-prices 10)) 10)

;(define (create-prices n) empty) ; stub
#;
(define (create-prices n) 
  (cond ((zero? n) empty)
        (else (cons (...) (create-prices (sub1 n))))))

(define (create-prices n) 
  (cond ((zero? n) empty)
        (else (cons (* n .10) (create-prices (sub1 n))))))


;;;;;;;;;;;;;;;;;;;;;;;
;; Student Riot Program
;;;;;;;;;;;;;;;;;;;;;;;
;; Natural Natural -> Boolean
;; Show a balloon at a random position within canvas bounds
;(define (throw-balloon canvas-x canvas-y) false) ; stub
#;
(define (throw-balloon canvas-x canvas-y) 
  (...))

(define (throw-balloon canvas-x canvas-y) 
  (draw-solid-disk (make-posn canvas-x canvas-y) 4 'red))

;; Natural Natural -> Boolean
;; Show the canvas
;(define (student-riot x y) false) ; stub
#;
(define (student-riot n) 
  (... n))

(define (student-riot n)
  (cond ((zero? n) true)
        (else (and (throw-balloon (random-n-m 0 300) (random-n-m 0 300)) (student-riot (sub1 n))))))

(start 300 300)
(student-riot 40)