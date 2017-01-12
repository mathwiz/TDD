;; Atom ListOfAtom -> ListOfAtom
;; produce list from lat with first instance of a removed if present
(define rember 
  (lambda (a lat) 
    (cond ((null? lat) 
           (quote ())) 
          (else 
           (cond ((eq? (car lat) a) 
                  (cdr lat)) 
                 (else (rember a (cdr lat))))))))

