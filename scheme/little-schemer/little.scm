;; Object -> Boolean
;; Return true if object is an atom
(define atom? 
  (lambda (x) 
    (and (not (pair? x)) 
         (not (null? x)))))

;; Natural -> Natural
;; Produce new natural number one larger than input

(define (add1 n) 
  (+ n 1))

;; Natural -> Natural
;; Produce number one less than input

(define (sub1 n) 
  (- n 1))

;; List -> Boolean
;; produce true if all elements of a list a atoms
(define lat? 
  (lambda (l) 
    (cond ((null? l) #t) 
          ((atom? (car l)) 
           (lat? (cdr l))) 
          (else #f))))

;; Atom List -> Boolean
;; produce true if a is contained in lat
(define member? 
  (lambda (a lat) 
    (cond ((null? lat) #f) 
          (else (or (eq? (car lat) a) 
                    (member? a (cdr lat)))))))


;; Atom ListOfAtom -> ListOfAtom
;; produce list from lat with first instance of a removed if present
(define rember 
  (lambda (a lat) 
    (cond ((null? lat) 
           (quote ())) 
          ((eq? (car lat) a) 
           (cdr lat)) 
          (else (cons (car lat) 
                      (rember a (cdr lat)))))))


;; Natural Natural -> Natural
;; version of binary + using sub1 and add1
(define o+ 
  (lambda (n m) 
    (cond ((zero? m) n) 
          (else (add1 (o+ n (sub1 m)))))))


;; Natural Natural -> Natural
;; version of binary - using sub1 and add1
(define o- 
  (lambda (n m) 
    (cond ((zero? m) n) 
          (else (sub1 (o- n (sub1 m)))))))


;; (listof Natural) -> Natural
;; add the elements of the tuple
(define (addtup tup) 
  (cond ((null? tup) 0) 
        (else (o+ (car tup) 
                  (addtup (cdr tup))))))



;; Natural Natural -> Natural
;; version of binary - using sub1 and add1
(define o- 
  (lambda (n m) 
    (cond ((zero? m) n) 
          (else (sub1 (o- n (sub1 m)))))))



;; Natural Natural -> Natural
;; alternative to multiply
(define (o* n m) 
  (cond ((zero? m) 0) 
        (else (o+ n (o* n (sub1 m))))))



;; Tuple Tuple -> Tuple
;; produce the pairwise addition of 2 tuples of the same length
(define (tup+ a b) 
  (cond ((null? a) b) 
        ((null? b) a) 
        (else (cons (o+ (car a) 
                        (car b)) 
                    (tup+ (cdr a) 
                          (cdr b))))))



;; Natural Natural -> Boolean
;; produce true if n > m
(define (o> n m) 
  (cond ((zero? n) #f) 
        ((zero? m) #t) 
        (else (o> (sub1 n) 
                  (sub1 m)))))



;; Natural Natural -> Boolean
;; produce true if n < m
(define (o< n m) 
  (cond ((zero? m) #f) 
        ((zero? n) #t) 
        (else (o< (sub1 n) 
                  (sub1 m)))))



;; Natural Natural -> Boolean
;; produce true if n = m
(define (o= n m) 
  (cond ((zero? m) 
         (zero? n)) 
        ((zero? n) #f) 
        (else (o= (sub1 n) 
                  (sub1 m)))))



;; Natural Natural -> Natural
;; produce the value of n ^ m
(define (o^ n m) 
  (cond ((zero? m) 1) 
        (else (o* n (o^ n (sub1 m))))))



;; Natural Natural -> Natural
;; produce the integer quotient
(define (o/ n m) 
  (cond ((o< n m) 0) 
        (else (add1 (o/ (o- n m) m)))))



;; (listof X) -> Natural
;; produce the length of lox
(define (len lox) 
  (cond ((null? lox) 0) 
        (else (add1 (len (cdr lox))))))



;; Natural (listof X) -> X
;; produce the element at pos (starting at 1) or false
(define (pick pos lox) 
  (cond ((or 
          (= 0 pos) 
          (null? lox)) false) 
        ((= 1 pos) 
         (car lox)) 
        (else
         (pick (sub1 pos) 
               (cdr lox)))))




;; (listof X) -> (listof X)
;; produce a list that does not contain any numbers
(define (no-nums lox) 
  (cond ((null? lox) 
         (quote ())) 
        ((number? (car lox)) 
         (no-nums (cdr lox))) 
        (else (cons (car lox) 
                    (no-nums (cdr lox))))))




;; (listof X) -> (listof X)
;; produce a list that contains only numbers
(define (all-nums lox) 
  (cond ((null? lox) 
         (quote ())) 
        ((number? (car lox)) 
         (cons (car lox) 
               (all-nums (cdr lox)))) 
        (else (all-nums (cdr lox)))))




;; Atom (listof X) -> Natural
;; produce the number of times a appears in lox
(define (occurs a lox)
  (cond ((null? lox) 0)
        ((eq? a (car lox)) 
         (add1 (occurs a (cdr lox))))
        (else
         (occurs a (cdr lox)))))




;; Natural -> Boolean
;; produce true if the argument is 1
(define (one? n)
  (= n 1))




;; Natural (listof X) -> (listof X)
;; produce a list that removes the nth element of lox
(define (rempick n lox) 
  (cond ((one? n) 
         (cdr lox)) 
        (else (cons (car lox) 
                    (rempick (sub1 n) 
                             (cdr lox))))))




;; Atom (listof X) -> (listof X)
;; produce list where a is removed from all sublists
(define (rember* a l) 
  (cond ((null? l) 
         (quote ())) 
        ((atom? (car l)) 
         (cond ((eq? (car l) a) 
                (rember* a (cdr l))) 
               (else (cons (car l) 
                           (rember* a (cdr l))))))
        (else (cons (rember* a (car l)) 
                    (rember* a (cdr l))))))




;; Atom Atom (listof X) -> (listof X)
;; insert new to the right of old in all sublists of l
(define (insertR* old new l) 
  (cond ((null? l) 
         (quote ())) 
        ((atom? (car l)) 
         (cond ((eq? (car l) old) 
                (cons old (cons new (insertR* old new (cdr l))))) 
               (else (cons (car l) 
                           (insertR* old new (cdr l)))))) 
        (else (cons (insertR* old new (car l))
                    (insertR* old new (cdr l))))))




;; Atom Atom (listof X) -> (listof X)
;; insert new to the left of old in all sublists of l
(define (insertL* old new l) 
  (cond ((null? l) 
         (quote ())) 
        ((atom? (car l)) 
         (cond ((eq? (car l) old) 
                (cons new (cons old (insertL* old new (cdr l))))) 
               (else (cons (car l) 
                           (insertL* old new (cdr l)))))) 
        (else (cons (insertL* old new (car l)) 
                    (insertL* old new (cdr l))))))



