;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6-2-drawing-simple-pictures) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(start 300 300)
(draw-solid-line (make-posn 1 1) (make-posn 400 400) 'red)
(draw-solid-rect (make-posn 20 10) 50 200 'blue)
(draw-circle (make-posn 200 10) 50 'red)
(draw-solid-disk (make-posn 200 100) 50 'green)
;;(stop)
