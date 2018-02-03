;; Object -> Boolean
;; Return true if object is an atom
(define atom? 
  (lambda (x) 
    (and (not (pair? x)) 
         (not (null? x)))))

;; Natural -> Natural
;; Produce new natural number one larger than input

(define (add1 n) (+ n 1))

;; Natural -> Natural
;; Produce number one less than input

(define (sub1 n) (- n 1))

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
          (else
           (add1 (o+ n (sub1 m)))))))


;; Natural Natural -> Natural
;; version of binary - using sub1 and add1
(define o- 
  (lambda (n m) 
    (cond ((zero? m) n) 
          (else
           (sub1 (o- n (sub1 m)))))))


;; (listof Natural) -> Natural
;; add the elements of the tuple
(define (addtup tup) 
  (cond ((null? tup) 0) 
        (else
         (o+ (car tup) 
             (addtup (cdr tup))))))



