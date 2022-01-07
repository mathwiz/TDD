(defun for-lines (n)
  (let ((line (read-line)))
      (if (> (length line) 0)
          (progn 
            (format t "~d: ~d~%" n line)
            (for-lines (1+ n)))
          (format t "~%"))))

(for-lines 1)
