;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname traffic-light) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; Traffic Light
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))
(define POSN-RED (make-posn X-BULBS Y-RED))
(define POSN-YELLOW (make-posn X-BULBS Y-YELLOW))
(define POSN-GREEN (make-posn X-BULBS Y-GREEN))

;; clear-bulb: symbol -> boolean
;; clear the given color bulb
(define (clear-bulb c) 
  (cond 
    [(symbol=? 'red c) (and (erase-bulb POSN-RED) (draw-off-bulb POSN-RED 'red))]
    [(symbol=? 'yellow c) (and (erase-bulb POSN-YELLOW) (draw-off-bulb POSN-YELLOW 'yellow))]
    [(symbol=? 'green c) (and (erase-bulb POSN-GREEN) (draw-off-bulb POSN-GREEN 'green))]))

;; draw-bulb: symbol -> boolean
;; draw an on bulb of color
(define (draw-bulb c)
  (cond 
    [(symbol=? 'red c) (draw-on-bulb POSN-RED 'red)]
    [(symbol=? 'yellow c) (draw-on-bulb POSN-YELLOW 'yellow)]
    [(symbol=? 'green c) (draw-on-bulb POSN-GREEN 'green)]))

;; switch: symbol symbol -> boolean
;; takes color to turn off and color to turn on
(define (switch off on)
  (and (clear-bulb off) (draw-bulb on)))

;; next: symbol -> symbol
;; move from current color to next color
(define (next c)
  (cond
    [(and (symbol=? 'red c) (switch 'red 'green)) 'green]
    [(and (symbol=? 'yellow c) (switch 'yellow 'red)) 'red]
    [(and (symbol=? 'green c) (switch 'green 'yellow)) 'yellow]))

(define (draw-on-bulb p c)
  (draw-solid-disk p BULB-RADIUS c))

(define (draw-off-bulb p c)
  (draw-circle p BULB-RADIUS c))

(define (erase-bulb p) (draw-on-bulb p 'white))

(define (traffic-light initial)   
  (and (clear-bulb 'red) (clear-bulb 'yellow) (clear-bulb 'green) (draw-bulb initial)))


;; Tests
;; draw with red on
(start WIDTH HEIGHT)
;(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
(traffic-light 'red)
(next 'red)
