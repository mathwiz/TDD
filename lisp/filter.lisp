(defun for-lines ()
  (let ((line (read)))
      (if line
          (progn 
            (format t "~S~%" line)
            (for-lines))
          (format t "~%"))))
