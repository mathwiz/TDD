#!/usr/bin/env -S sbcl --script

(defun for-lines (fn args)
  (let ((line (read-line)))
      (if (> (length line) 0)
          (for-lines fn
            (apply fn (list line args)))
          (format t "~%"))))

(defun number-line (text args)
  (let ((n (car args)))
    (progn 
      (format t "~d: ~d~%" n text)
      (list (1+ n)))))

(for-lines 
 #'number-line
 (list 1))

