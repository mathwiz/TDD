;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname second) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Step through the following
#;
(+ (* (/ 12 8) 2/3)
   (- 20 (sqrt 4)))
#;
(cond
  ((= 0 0) false)
  ((> 0 1) (symbol=? 'a 'a))
  (else (= (/ 1 0) 9)))
#;
(cond
  ((= 2 0) false)
  ((> 2 1) (symbol=? 'a 'a))
  (else (= (/ 1 2) 9)))

(define (f x y)
  (+ (* 3 x) (* y y)))

#;
(+ (f 1 2) (f 2 1))
#;
(f 1 (* 2 3))
#;
(f (f 1 (* 2 3)) 19)