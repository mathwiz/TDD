;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname moving-circles-rectangles) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct circle (center radius color))
(define-struct rectangle (corner width height color))

;; fun-for-circle: circle -> ???
(define (fun-for-circle circle) 
  (draw-a-circle circle))

;; fun-for-rectangle: circle -> ???
(define (fun-for-rectangle rect) 
  (draw-a-rectangle rect))

;; draw-a-circle: circle -> boolean
(define (draw-a-circle c)
  (draw-circle (circle-center c) (circle-radius c) (circle-color c)))

;; draw-a-rectangle: rectangle -> boolean
(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-corner r) (rectangle-width r) (rectangle-height r) (rectangle-color r)))

;; distance: posn posn -> number
(define (distance a b)
  (sqrt (+ (sqr (- (posn-x b) (posn-x a))) (sqr (- (posn-y b) (posn-y a))))))

;; in-circle?: circle posn -> boolean
(define (in-circle? c p)
  (< (distance (circle-center c) p) (circle-radius c)))

;; in-rectangle?: circle posn -> boolean
(define (in-rectangle? r p)
  (and (< (h-distance p (rectangle-corner r)) (rectangle-width r))
       (> (h-distance p (rectangle-corner r)) 0)
       (< (v-distance p (rectangle-corner r)) (rectangle-height r))
       (> (v-distance p (rectangle-corner r)) 0)))

(define (h-distance p1 p2)
  (- (posn-x p1) (posn-x p2)))

(define (v-distance p1 p2)
  (- (posn-y p1) (posn-y p2)))

;; translate-circle: circle number -> circle
(define (translate-circle c delta)
  (make-circle (make-posn (+ delta (posn-x (circle-center c))) (posn-y (circle-center c))) (circle-radius c) (circle-color c)))

;; translate-rectangle: rectangle number -> rectangle
(define (translate-rectangle r delta)
  (make-rectangle (make-posn (+ delta (posn-x (rectangle-corner r))) (posn-y (rectangle-corner r))) (rectangle-width r) (rectangle-height r) (rectangle-color r)))

;; clear-a-circle: circle -> boolean
(define (clear-a-circle c)
  (clear-circle (circle-center c) (circle-radius c) (circle-color c)))

;; clear-a-rectangle: rectangle -> boolean
(define (clear-a-rectangle r)
  (clear-solid-rect (rectangle-corner r) (rectangle-width r) (rectangle-height r) (rectangle-color r)))

;; draw-and-clear-circle: circle -> boolean
(define (draw-and-clear-circle c)
  (and (draw-a-circle c) (sleep-for-a-while 1) (clear-a-circle c)))

;; draw-and-clear-rectangle: rectangle -> boolean
(define (draw-and-clear-rectangle r)
  (and (draw-a-rectangle r) (sleep-for-a-while 1) (clear-a-rectangle r)))

;; move-circle: number circle -> circle
(define (move-circle delta c)
  (cond
    [(draw-and-clear-circle c) (translate-circle c delta)]
    [else c]))

;; move-rectangle: number rectangle -> rectangle
(define (move-rectangle delta r)
  (cond
    [(draw-and-clear-rectangle r) (translate-rectangle r delta)]
    [else r]))

;; TESTs
(check-expect (distance (make-posn 1 1) (make-posn 4 5)) 5)
(check-expect (distance (make-posn 0 0) (make-posn 12 5)) 13)
(check-expect (in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 6 1.5)) true)
(check-expect (in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 8 6)) false)
(check-expect (in-rectangle? (make-rectangle (make-posn 2 3) 3 2 'red) (make-posn 4 4)) true)
(check-expect (in-rectangle? (make-rectangle (make-posn 2 3) 3 2 'red) (make-posn 4 6)) false)
(check-expect (in-rectangle? (make-rectangle (make-posn 2 3) 3 2 'red) (make-posn 6 4)) false)
(check-expect (in-rectangle? (make-rectangle (make-posn 2 3) 3 2 'red) (make-posn 1 1)) false)
(check-expect (in-rectangle? (make-rectangle (make-posn 2 3) 3 2 'red) (make-posn 8 6)) false)
(start 300 300)
(define C1 (make-circle (make-posn 50 50) 30 'green))
(define C2 (make-circle (make-posn 50 50) 50 'blue))
(define R1 (make-rectangle (make-posn 30 30) 10 20 'blue))
(define R2 (make-rectangle (make-posn 60 30) 10 20 'blue))
;(draw-a-circle C1)
;(draw-a-circle (translate-circle C1 100))
;(clear-a-circle C1)
;(draw-and-clear-circle C2)
(define MOVE 20)
(draw-a-rectangle (move-rectangle MOVE (move-rectangle MOVE (move-rectangle MOVE (move-rectangle MOVE R1)))))
(draw-a-rectangle (move-rectangle MOVE (move-rectangle MOVE (move-rectangle MOVE (move-rectangle MOVE R2)))))
(draw-a-circle (move-circle MOVE (move-circle MOVE (move-circle MOVE (move-circle MOVE C2)))))
