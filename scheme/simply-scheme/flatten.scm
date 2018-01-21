;; ListOfListOrAtom is one of:
;; - empty
;; - atomic distinct
;; - compound: (cons ListOfListOrAtom ListOfListOrAtom)
(define LLA1 '())
(define LLA2 (cons 2 ()))
(define LLA3 (cons 3 (cons LLA2 (cons 1 ()))))
(define LLA4 (cons 0 (cons LLA2 (cons -1 (cons LLA3 (cons 1 ()))))))

;; ListOfListOrAtom -> ListOfAtom
;;(define (flatten xs) '()) ; stub
(define (flatten xs) 
  (cond ((empty? xs) 
         '()) 
        ((word? xs) 
         (cons xs ())) 
        (else (append (flatten (car xs)) 
                      (flatten (cdr xs))))))


(restart 1)
