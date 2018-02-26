;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(defun add1 (x) 
  (+ x 1))


(defun sub1 (x) 
  (- x 1))

(defun identity (x)
  x)

(sub1 4)
(add1 4)
(identity 4)
