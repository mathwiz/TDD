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



;; Atom (listof X) -> Boolean
;; produce true if a is an element of any sublist of l
(define (member* a l) 
  (cond ((null? l) 
         #f) 
        ((atom? (car l)) 
         (or (eq? a (car l)) 
             (member* a (cdr l)))) 
        (else (or (member* a (car l)) 
                  (member* a (cdr l))))))




;; (listof X) -> Atom
;; produce the leftmost element of a non-empty list
;; (which also does not contain empty lists)
(define (leftmost l) 
  (cond ((atom? (car l)) 
         (car l)) 
        (else (leftmost (car l)))))




;; Atom Atom -> Boolean
;; produce true if a and b are the same atom or number
(define (eqan? a b) 
  (cond ((and 
          (number? a) 
          (number? b)) 
         (= a b)) 
        ((or 
          (number? a) 
          (number? b)) #f) 
        (else (eq? a b))))




;; S-exp S-exp -> Boolean
;; produce true if a and b are the same S-expression
(define (equal? a b) 
  (cond ((and 
          (atom? a) 
          (atom? b)) 
         (eqan? a b)) 
        ((or 
          (atom? a) 
          (atom? b))
         #f) 
        (else (eqlist? a b))))



;; (listof X) (listof X) -> Boolean
;; produce true if a and b are the same list
(define (eqlist? a b) 
  (cond ((and 
          (null? a) 
          (null? b)) #t) 
        ((or 
          (null? a) 
          (null? b)) #f) 
        (else (and (equal? (car a) 
                           (car b)) 
                   (eqlist? (cdr a) 
                            (cdr b))))))




;; (listof X) -> Boolean
;; Produce true if the list is a set
(define 
  (set? l) 
  (cond ((null? l) #t)
        ((member? (car l) (cdr l)) #f)
        (else (set? (cdr l)))))




;; (listof X) -> (listof X)
;; Produce version of l with no repeats
(define (makeset l) 
  (cond ((null? l) 
         '()) 
        ((member? (car l) 
                  (cdr l)) 
         (makeset (cdr l))) 
        (else (cons (car l) 
                    (makeset (cdr l))))))




;; (listof X) (listof X) -> Boolean
;; Produce true if all members of a are in b
(define (subset? a b) 
  (cond ((null? a) #t) 
        (else (and (member? (car a) b) 
                   (subset? (cdr a) b)))))




;; (listof X) (listof X) -> Boolean
;; Produce true if a and b are equal sets
(define (eqset? a b) 
  (and (subset? a b) 
       (subset? b a)))




;; (listof X) (listof X) -> Boolean
;; Produce true if any members of a are in b
(define (intersect? a b) 
  (cond ((null? a) #f) 
        (else (or (member? (car a) b) 
                  (intersect? (cdr a) b)))))




;; (listof X) (listof X) -> (listof X)
;; Produce interection of a and b
(define (intersection a b) 
  (cond ((null? a) 
         '()) 
        ((member? (car a) b) 
         (cons (car a) 
               (intersection (cdr a) b))) 
        (else (intersection (cdr a) b))))




;; (listof X) (listof X) -> (listof X)
;; Produce new set with all members of a and b
(define (union a b) 
  (cond ((null? a) b) 
        ((member? (car a) b) 
         (union (cdr a) b)) 
        (else (cons (car a) 
                    (union (cdr a) b)))))



;; (listof X) (listof X) -> (listof X)
;; Produce new set with all members of a not in b
(define (difference a b) 
  (cond ((null? a) '()) 
        ((member? (car a) b) 
         (difference (cdr a) b)) 
        (else (cons (car a) 
                    (difference (cdr a) b)))))




;; (listof (listof X) -> (listof X)
;; Produce set that is intersection of all sets in l-set
(define (intersectall l-set) 
  (cond ((null? (cdr l-set)) 
         (car l-set)) 
        (else (intersection (car l-set) 
                            (intersectall (cdr l-set))))))




;; (listof X) -> Boolean
;; Produce true iff l has exactly 2 s-exp
(define (a-pair? l) 
  (cond ((atom? l) #f) 
        ((null? l) #f) 
        ((null? (cdr l)) #f) 
        ((null? (cdr (cdr l)))) 
        (else #f)))




;; (listof X) -> X
;; Produce the first element of l
(define (first l)
  (car l))




;; (listof X) -> X
;; Produce the second element of l
(define (second l)
  (car (cdr l)))



;; A B -> (A B)
;; Produce pair consisting of a and b
(define (build a b)
  (cons a (cons b '())))



;; (listof X) -> X
;; Produce the third element of l
(define (third l)
  (car (cdr (cdr l))))



;; (listof (listof X)) -> (listof X)
;; Produce list of the first elements of a list of lists
(define (firsts l) 
  (cond ((null? l) 
         '()) 
        (else (cons (car (car l)) 
                    (firsts (cdr l))))))



;; (listof Pair) -> Boolean
;; Produce true if rel is a function
(define (fun? rel)
  (set? (firsts rel)))



;; Pair -> Pair
;; Produce new pair from p with the elements swapped
(define (revpair p)
  (build (second p) (first p)))



;; (listof Pair) -> (listof Pair)
;; Produce a new relation where each existing pair is reversed
(define (revrel rel) 
  (cond ((null? rel) 
         '()) 
        (else (cons (revpair (car rel)) 
                    (revrel (cdr rel))))))



;; (listof Pair) -> Boolean
;; Produce true if rel is a one-to-one function
(define (one-to-one? rel) 
  (and (fun? rel) 
       (fun? (revrel rel))))




;; Predicate -> Function
;; Produce function that produces the list that removes
;; the first instance of sexp by using test? to decide
(define (rember-f test?) 
  (lambda (sexp l) 
    (cond ((null? l) 
           '()) 
          ((test? sexp (car l)) 
           (cdr l)) 
          (else (cons (car l) 
                      ((rember-f test?) sexp (cdr l)))))))





;; Sexp (listof X) -> (listof X)
;; Do rember using eq? to test
(define (rember-eq? sexp l) 
  ((rember-f eq?) sexp l))




;; Sexp (listof X) -> (listof X)
;; Do rember using equal? to test
(define (rember-equal? sexp l) 
  ((rember-f equal?) sexp l))




;; Sexp Sexp Sexp -> Sexp
;; Build a sequence a b c
(define (seqL a b c)
  (cons a (cons b c)))




;; Sexp Sexp Sexp -> Sexp
;; Build a sequence b a c
(define (seqR a b c)
  (cons b (cons a c)))




;; Predicate Function -> Function
;; Produce function that does insert using test? to decide
;; location and seqfun to put new item to left or right in l
(define (insert-f test? seqfun) 
  (lambda (old new l) 
    (cond ((null? l) 
           '()) 
          ((test? (car l) old) 
           (seqfun new (car l) 
                   (cdr l))) 
          (else (cons (car l) 
                      ((insert-f test? seqfun) old new (cdr l)))))))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert left with eq?
(define (insertL-eq? old new l) 
  ((insert-f eq? seqL) old new l))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert right with eq?
(define (insertR-eq? old new l) 
  ((insert-f eq? seqR) old new l))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert right with equal?
(define (insertR-equal? old new l) 
  ((insert-f equal? seqR) old new l))




;; Sexp Sexp (listof X) -> (listof X)
;; Do insert left with equal?
(define (insertL-equal? old new l) 
  ((insert-f equal? seqL) old new l))




