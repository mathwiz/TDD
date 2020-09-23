(loop for i in '(1 2 3) do (print i))

(loop for i on '(1 2 3) do (print i))

(loop for i across #(1 2 3) do (print i))

(defvar h)
(setf h (make-hash-table))
(setf (gethash 'a h) 1)
(setf (gethash 'b h) 2)
(loop for k being the hash-key of h do (print k))
(loop for v being the hash-value of h do (print v))





