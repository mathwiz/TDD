(defun div (x y)
    (cond ((= 0 y) nil)
          (t (/ x y))))

(defun x-max (x y)
  (cond ((< x y) y)
        (t x)))

(defun x-min (x y)
  (cond ((< y x) y)
        (t x)))


