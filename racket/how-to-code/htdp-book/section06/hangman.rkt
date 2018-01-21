;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hangman) (read-case-sensitive #t) (teachpacks ((lib "hangman.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "hangman.rkt" "teachpack" "htdp")))))
;; Hangman
;; Play Hangman game
(start 200 200)

;; Symbol -> Boolean
;; Consume body-part name and draw that figure
;(define (draw-next-part part)
;  (... part))
(define (draw-next-part part)
  (cond ((symbol=? part 'noose) (draw-a-noose 'black))
        ((symbol=? part 'head) (draw-a-head 'black))
        ((symbol=? part 'body) (draw-a-body 'black))
        ((symbol=? part 'right-leg) (draw-a-right-leg 'black))
        ((symbol=? part 'left-leg) (draw-a-left-leg 'black))
        ((symbol=? part 'left-arm) (draw-a-left-arm 'black))
        ((symbol=? part 'right-arm) (draw-a-right-arm 'black))
        (else false)))

(define (draw-a-noose c)
  (and (draw-solid-line (make-posn 0 10) (make-posn 100 10) c) 
       (draw-solid-line (make-posn 100 10) (make-posn 100 30) c)))
(define (draw-a-head c)
  (draw-circle (make-posn 100 50) 20 c))
(define (draw-a-body c)
  (draw-solid-line (make-posn 100 70) (make-posn 100 160) c))
(define (draw-a-right-leg c)
  (draw-solid-line (make-posn 100 160) (make-posn 50 190) c))
(define (draw-a-left-leg c)
  (draw-solid-line (make-posn 100 160) (make-posn 150 190) c))
(define (draw-a-left-arm c)
  (draw-solid-line (make-posn 100 100) (make-posn 150 90) c))
(define (draw-a-right-arm c)
  (draw-solid-line (make-posn 100 100) (make-posn 50 90) c))
       
;; Word: three symbols that represent letters
(define-struct word (a b c))

;; Word Word Symbol -> Word
;; Produces a new Status Word given the Goal Word and a Status Word
;; and a symbol representing the letter guess.
;; Goal Word: word struct of the word to guess
;; Status Word: word struct of the status of guesses where '_ is unguessed letter
(check-expect (reveal (make-word 't 'e 'a) (make-word '_ 'e '_) 'u) (make-word '_ 'e '_))
(check-expect (reveal (make-word 'a 'l 'e) (make-word 'a '_ '_) 'e) (make-word 'a '_ 'e))
(check-expect (reveal (make-word 'a 'l 'l) (make-word '_ '_ '_) 'l) (make-word '_ 'l 'l))
;(define (reveal goal status guess) (make-word '_ '_ '_)) ; stub
(define (reveal goal status guess) 
  (make-word (if (symbol=? (word-a goal) guess) (word-a goal) (word-a status)) 
             (if (symbol=? (word-b goal) guess) (word-b goal) (word-b status))
             (if (symbol=? (word-c goal) guess) (word-c goal) (word-c status))))

;; Run it
;(draw-next-part 'noose)
;(draw-next-part 'head)
;(draw-next-part 'body)
;(draw-next-part 'right-leg)
;(draw-next-part 'left-leg)
;(draw-next-part 'left-arm)
;(draw-next-part 'right-arm)
(hangman make-word reveal draw-next-part)