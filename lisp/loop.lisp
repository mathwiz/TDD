(loop for i in '(1 2 3) do (print i))

(loop for i on '(1 2 3) do (print i))

(loop for i across #(1 2 3) do (print i))

(defvar h)
(setf h (make-hash-table))
(setf (gethash 'a h) 1)
(setf (gethash 'b h) 2)
(loop for k being the hash-key of h do (print k))
(loop for v being the hash-value of h do (print v))
(loop for k being the hash-key using (hash-value v) of h do (format t "~a ~a~%" k v))

(loop for i from 1 to 3 do (print i))

(loop for i from 1.0 to 3.0 by 0.5 do (print i))

(loop for i from 3 downto 1 do (print i))








