(defun recurrence (fn arg n)
  (labels ((recur (a counter)
             (cond ((= counter 0) a)
                   ('t (let ((newarg (apply fn (list a))))
                         (recur newarg (1- counter)))))))
    (recur arg (floor n))))

(defun recur-sin (arg n)
  (recurrence #'sin arg n))

(defun recur-cos (arg n)
  (recurrence #'cos arg n))

(defvar a1 (/ pi 4))
