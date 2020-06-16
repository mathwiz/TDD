(defun binomial (p n)
  (labels ((recur (n acc)
             (cond ((= n 0) acc)
                   ((> p (random 1.0)) (recur (1- n) (1+ acc)))
                   (t (recur (1- n) acc)))))
    (recur n 0)))

