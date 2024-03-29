(defun expt-inv (b n)
  (expt-invariant b n 1))


(defun even? (n)
  (= (mod n 2) 0))


(defun square (n)
  (* n n))


(defun expt-invariant (b n a)
  (cond ((= n 0) a)
        ((even? n) (expt-invariant (square b) (/ n 2) a))
        (t (expt-invariant b (- n 1) (* a b)))))
