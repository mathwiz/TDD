;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname moving-circles-rectangles) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct circle (center radius color))

;; fun-for-circle: circle -> ???
(define (fun-for-circle circle) 
  (draw-a-circle circle))

;; draw-a-circle: circle -> boolean
(define (draw-a-circle c)
  (draw-circle (circle-center c) (circle-radius c) (circle-color c)))

;; distance: posn posn -> number
(define (distance a b)
  (sqrt (+ (sqr (- (posn-x b) (posn-x a))) (sqr (- (posn-y b) (posn-y a))))))

;; in-circle?: circle posn -> boolean
(define (in-circle? c p)
  (< (distance (circle-center c) p) (circle-radius c)))

;; translate-circle: circle number -> circle
(define (translate-circle c delta)
  (make-circle (make-posn (+ delta (posn-x (circle-center c))) (posn-y (circle-center c))) (circle-radius c) (circle-color c)))

;; clear-a-circle: circle -> boolean
(define (clear-a-circle c)
  (draw-circle (circle-center c) (circle-radius c) 'white))

;; draw-and-clear-circle: circle -> boolean
(define (draw-and-clear-circle c)
  (and (draw-a-circle c) (sleep-for-a-while 1) (clear-a-circle c)))

;; move-circle: number circle -> circle
(define (move-circle delta c)
  (cond
    [(draw-and-clear-circle c) (translate-circle c delta)]
    [else c]))

;; TESTs
(check-expect (distance (make-posn 1 1) (make-posn 4 5)) 5)
(check-expect (distance (make-posn 0 0) (make-posn 12 5)) 13)
(check-expect (in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 6 1.5)) true)
(check-expect (in-circle? (make-circle (make-posn 6 2) 1 'red) (make-posn 8 6)) false)
(start 300 300)
(define C1 (make-circle (make-posn 50 50) 30 'green))
(define C2 (make-circle (make-posn 50 100) 30 'blue))
;(draw-a-circle C1)
;(draw-a-circle (translate-circle C1 100))
;(clear-a-circle C1)
;(draw-and-clear-circle C2)
(draw-a-circle (move-circle 20 (move-circle 20 (move-circle 20 (move-circle 20 C2)))))