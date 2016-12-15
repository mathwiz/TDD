;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname moving-pictures) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct shape (name loc width height color))

(define SHAPES 
  (list 
   (make-shape 'circle (make-posn 50 50) 40 40 'red)
   (make-shape 'rectangle (make-posn 30 20) 5 5 'blue)
   (make-shape 'rectangle (make-posn 65 20) 5 5 'blue)
   (make-shape 'rectangle (make-posn 40 75) 20 10 'red)
   (make-shape 'rectangle (make-posn 45 35) 10 30 'blue)
   ))

(define (fun-for-losh losh)
  (... losh))