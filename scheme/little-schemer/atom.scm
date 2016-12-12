;; Object -> Boolean
;; Return true if object is an atom
(define atom? 
  (lambda (x) 
    (and (not (pair? x)) 
         (not (null? x)))))
