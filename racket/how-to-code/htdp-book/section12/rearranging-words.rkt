;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rearranging-words) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; Word is one of:
;; - empty
;; - (cons a w) where a is a symbol [a', 'b, ..., 'z] and w is a word

;; word -> list-of-words
;; Produce a list of all rearrangements of the letters in a-word
;(define (arrangements a-word) empty) ; stub
;(check-expect (arrangements (list 'd 'e 'r)) L1+d)

#;
(define (arrangements a-word)
  (cond ((empty? a-word) ...)
        (else ... (first a-word) ... (arrangements (rest a-word)) ...)))

(define (arrangements a-word)
  (cond ((empty? a-word) (cons empty empty))
        (else (insert-everywhere/in-all-words (first a-word) (arrangements (rest a-word))))))

;; Examples
(define L1 (cons (cons 'e (cons 'r empty)) 
                 (cons (cons 'r (cons 'e empty)) 
                       empty)))
;; same as 
(define L2 (list (list 'e 'r) (list 'r 'e)))

(define L1+d (list (list 'd 'e 'r) (list 'e 'd 'r) (list 'e 'r 'd) (list 'd 'r 'e) (list 'r 'd 'e) (list 'r 'e 'd)))

;; symbol list-of-words -> list-of-words
;; Produce a list where the symbol is inserted between all letters and at the beginning and end.
;(check-expect (insert-everywhere/in-all-words 'd L1) L1+d)
;(check-expect (list (list 'd 'e) (list 'd 'r)) (cons (cons 'd (cons 'e empty)) (cons (cons 'd (cons 'r empty)) empty)))
;(check-expect (insert-everywhere/in-all-words 'd (list empty empty)) (list (list 'd)))
;(check-expect (insert-everywhere/in-all-words 'd (list (list 'e) (list 'r))) (list (list 'd 'e) (list 'e 'd) (list 'd 'r) (list 'r 'd)))

;(define (insert-everywhere/in-all-words s ws) empty) ; stub
  
(define (insert-everywhere/in-all-words s ws)
  (cond ((empty? ws) (list s))
        (else (cons (first ws) (insert-everywhere/in-all-words s (rest ws))))))

(insert-everywhere/in-all-words 'd (cons empty empty))
(insert-everywhere/in-all-words 'd (list (list 'e 'r)))

;More helpers needed. Defer implementation.