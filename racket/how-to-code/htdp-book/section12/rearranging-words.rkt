;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rearranging-words) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; word -> list-of-words
;; Produce a list of all rearrangements of the letters in a-word
;(define (arrangements a-word) empty) ; stub
#;
(define (arrangements a-word)
  (cond ((empty? a-word) ...)
        (else ... (first a-word) ... (arrangements (rest a-word)) ...)))

(define (arrangements a-word)
  (cond ((empty? a-word) empty)
        (else (insert-everywhere/in-all-words (first a-word) (arrangements (rest a-word))))))

(define L1 (cons (cons 'e (cons 'r empty)) 
                 (cons (cons 'r (cons 'e empty)) 
                       empty)))
(define L1+d (list (list 'd 'e 'r) (list 'e 'd 'r) (list 'e 'r 'd) (list 'd 'r 'e) (list 'r 'd 'e) (list 'r 'e 'd)))

;; symbol list-of-words -> list-of-words
;; Produce a list where the symbol is inserted between all letters and at the beginning and end.
;(check-expect (insert-everywhere/in-all-words 'd L1) empty)

;(define (insert-everywhere/in-all-words s ws) empty) ; stub
  
(define (insert-everywhere/in-all-words s ws)
  (cond ((empty? ws) empty)
        (else (cons (append (list s) (first ws)) (insert-everywhere/in-all-words s (rest ws))))))

(define (permute s letters)
  (cond ((empty? letters) (append (list s) empty))
        (else (cons (append (list s) letters) (permute s (rest letters))))))