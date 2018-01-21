;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname moving-shapes) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct circle (center radius color))
(define-struct rectangle (corner width height color))
(define-struct shape (name loc width height color))

;; fun-for-circle: circle -> ???
(define (fun-for-circle circle) 
  (... circle))

;; fun-for-rectangle: rectangle -> ???
(define (fun-for-rectangle rect) 
  (... rect))

;; fun-for-shape: shape -> ???
(define (fun-for-shape s) 
  (... s))

;; draw-a-circle: circle -> boolean
(define (draw-a-circle c)
  (draw-circle (circle-center c) (circle-radius c) (circle-color c)))

;; draw-a-rectangle: rectangle -> boolean
(define (draw-a-rectangle r)
  (draw-solid-rect (rectangle-corner r) (rectangle-width r) (rectangle-height r) (rectangle-color r)))

;; draw-shape: shape -> boolean
(define (draw-shape s)
  (cond 
    ((symbol=? (shape-name s) 'circle) (draw-a-circle (make-circle (shape-loc s) (shape-width s) (shape-color s))))
    ((symbol=? (shape-name s) 'rectangle) (draw-a-rectangle (make-rectangle (shape-loc s) (shape-width s) (shape-height s) (shape-color s))))
    (else false)))

;; translate-circle: circle number -> circle
(define (translate-circle c delta)
  (make-circle (make-posn (+ delta (posn-x (circle-center c))) (posn-y (circle-center c))) (circle-radius c) (circle-color c)))

;; translate-rectangle: rectangle number -> rectangle
(define (translate-rectangle r delta)
  (make-rectangle (make-posn (+ delta (posn-x (rectangle-corner r))) (posn-y (rectangle-corner r))) (rectangle-width r) (rectangle-height r) (rectangle-color r)))

;; translate-shape: shape number -> shape
(define (translate-shape s delta)
  (make-shape (shape-name s) (make-posn (+ delta (posn-x (shape-loc s))) (posn-y (shape-loc s))) (shape-width s) (shape-height s) (shape-color s)))

;; clear-a-circle: circle -> boolean
(define (clear-a-circle c)
  (clear-circle (circle-center c) (circle-radius c) (circle-color c)))

;; clear-a-rectangle: rectangle -> boolean
(define (clear-a-rectangle r)
  (clear-solid-rect (rectangle-corner r) (rectangle-width r) (rectangle-height r) (rectangle-color r)))

;; clear-shape: shape -> boolean
(define (clear-shape s)
  (cond 
    ((symbol=? (shape-name s) 'circle) (clear-a-circle (make-circle (shape-loc s) (shape-width s) (shape-color s))))
    ((symbol=? (shape-name s) 'rectangle) (clear-a-rectangle (make-rectangle (shape-loc s) (shape-width s) (shape-height s) (shape-color s))))
    (else false)))

;; draw-and-clear-circle: circle -> boolean
(define (draw-and-clear-circle c)
  (and (draw-a-circle c) (sleep-for-a-while 1) (clear-a-circle c)))

;; draw-and-clear-rectangle: rectangle -> boolean
(define (draw-and-clear-rectangle r)
  (and (draw-a-rectangle r) (sleep-for-a-while 1) (clear-a-rectangle r)))

;; draw-and-clear-shape: shape -> boolean
(define (draw-and-clear-shape s)
  (and (draw-shape s) (sleep-for-a-while 1) (clear-shape s)))

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

;; move-shape: number shape -> shape
(define (move-shape delta s)
  (cond
    [(draw-and-clear-shape s) (translate-shape s delta)]
    [else s]))

;; TESTs
(define C1 (make-circle (make-posn 50 50) 30 'green))
(define C2 (make-circle (make-posn 50 50) 50 'blue))
(define R1 (make-rectangle (make-posn 30 30) 10 20 'blue))
(define R2 (make-rectangle (make-posn 60 30) 10 20 'blue))
(define S1 (make-shape 'rectangle (make-posn 60 30) 10 20 'blue))
(define S2 (make-shape 'circle (make-posn 50 50) 30 30 'green))
(start 300 300)
(define MOVE 20)
(draw-shape (move-shape MOVE (move-shape MOVE (move-shape MOVE (move-shape MOVE S1)))))
(draw-shape (move-shape MOVE (move-shape MOVE (move-shape MOVE (move-shape MOVE S2)))))
