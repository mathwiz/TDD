;; Set List -> Entry
;; Create Entry from Set and List
;; (List has same length as Set)
(define new-entry build)





;; Entry -> Sexp
;; Produce the value of an entry for name
;; Employ the helper lookup-in-entry-help
(define lookup-in-entry-help 
  (lambda (name names values entry-f) 
    (cond ((null? names) 
           (entry-f name)) 
          ((equal? (car names) name) 
           (car values)) 
          (else (lookup-in-entry-help name (cdr names) 
                                      (cdr values) entry-f)))))

(define lookup-in-entry 
  (lambda (name entry entry-f) 
    (lookup-in-entry-help name (first entry) 
                          (second entry) entry-f)))
