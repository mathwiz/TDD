;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname moving-pictures) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct circle (center radius color))
(define-struct rectangle (corner width height color))
(define-struct shape (name loc width height color))

;; draw-shape: shape -> boolean
(define (draw-shape s)
  (cond 
    ((symbol=? (shape-name s) 'circle) (draw-circle (shape-loc s) (shape-width s) (shape-color s)))
    ((symbol=? (shape-name s) 'rectangle) (draw-solid-rect (shape-loc s) (shape-width s) (shape-height s) (shape-color s)))
    (else false)))

;; translate-shape: shape number -> shape
(define (translate-shape s delta)
  (make-shape (shape-name s) (make-posn (+ delta (posn-x (shape-loc s))) (posn-y (shape-loc s))) (shape-width s) (shape-height s) (shape-color s)))

;; clear-shape: shape -> boolean
(define (clear-shape s)
  (cond 
    ((symbol=? (shape-name s) 'circle) (clear-circle (shape-loc s) (shape-width s) (shape-color s)))
    ((symbol=? (shape-name s) 'rectangle) (clear-solid-rect (shape-loc s) (shape-width s) (shape-height s) (shape-color s)))
    (else false)))

#; Template
(define (fun-for-losh losh)
  (... losh))

;; (list Shape) -> Boolean
;; Draw all the shapes in a list of shapes
(check-expect (draw-losh empty) true)
 
(define (draw-losh losh)
  (cond 
    ((empty? losh) true)
    (else (and (draw-shape (first losh)) (draw-losh (rest losh))))))

;; (list Shape) delta -> (list Shape)
;; Produce list of shapes from given list with each with x changed by delta
(define (translate-losh losh delta)
  (cond 
    ((empty? losh) empty)
    (else (cons (translate-shape (first losh) delta) (translate-losh (rest losh) delta)))))

;; (list Shape) -> Boolean
;; Clear all the shapes
(define (clear-losh losh)
  (cond 
    ((empty? losh) true)
    (else (and (clear-shape (first losh)) (clear-losh (rest losh))))))

;; Picture -> Boolean
;; Draw, wait, clear the picture
(define (draw-and-clear-picture picture)
  (and (draw-losh picture) (sleep-for-a-while 1) (clear-losh picture)))

;; Picture -> Picture
(define (move-picture delta picture)
  (cond 
    ((draw-and-clear-picture picture) (translate-losh picture delta))
    (else picture)))

;; Draw the shapes
(define FACE 
  (list 
   (make-shape 'circle (make-posn 50 50) 40 40 'red)
   (make-shape 'rectangle (make-posn 30 20) 5 5 'blue)
   (make-shape 'rectangle (make-posn 65 20) 5 5 'blue)
   (make-shape 'rectangle (make-posn 40 75) 20 10 'red)
   (make-shape 'rectangle (make-posn 45 35) 10 30 'blue)
   ))
(define MOVE 50)

(start 300 300)
(draw-losh (move-picture MOVE (move-picture MOVE (move-picture MOVE (move-picture MOVE FACE)))))

