(defun for-lines ()
  (let ((line (read-line)))
      (if (> (length line) 0)
          (progn 
            (format t "~S~%" line)
            (for-lines))
          (format t "~%"))))
