;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hangman) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; Hangman

;; Play Hangman game
(start 200 200)

;; Symbol -> Boolean
;; Consume body-part name and draw that figure
;(define (draw-next-part part)
;  (... part))

(define (draw-next-part part)
  (draw-solid-rect (make-posn 0 0) 20 40 'red))

;; Symbol -> Symbol
;; Produce next part name given a part name
(check-expect (next-part 'head) 'body)
(define (next-part part) 'notcorrect)
  
'right-leg
'left-leg
'left-arm
'right-arm
'body
'head
'noose

(draw-next-part 'head)