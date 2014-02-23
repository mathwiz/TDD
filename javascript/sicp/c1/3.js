/* Translate this
;; Number Number Number -> Number
;; Sum of squares of 2 larger of 3 numbers
;(define (sum-sq-3 x y z)
;  (... x y z))
(define (sum-sq-3 x y z)
  (cond ((and (<= x z) (<= x y)) (+ (sqr z) (sqr y)))
        ((and (<= y z) (<= y x)) (+ (sqr x) (sqr z)))
        ((and (<= z x) (<= z y)) (+ (sqr x) (sqr y))))
  )
*/
function sum_sq_3 (x, y, z) {
	if (x <= z && x <= y)
		return z*z + y*y;
	else if (y <= z && x <= x) 
		return z*z + x*x;
	else 
		return x*x + y*y;
}