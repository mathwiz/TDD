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




;; Entry Table -> Table
;; Add a new Entry to the front of a Table
(define extend-table cons)





;; Sexp Table -> Sexp
;; Produce the value of name
(define lookup-in-table 
  (lambda (name table table-f) 
    (cond ((null? table) 
           (table-f name)) 
          (else (lookup-in-entry name (car table) 
                                 (lambda (name) 
                                   (lookup-in-table name (cdr table) table-f)))))))





;; Expression -> Function
;; Produce an action for e
(define atom-to-action 
  (lambda (a) 
    (let ((C *const) 
          (I *identifier)) 
      (cond ((number? a) C) 
            ((eq? a #t) C) 
            ((eq? a #f) C) 
            ((eq? a 'cons) C) 
            ((eq? a 'car) C) 
            ((eq? a 'cdr) C) 
            ((eq? a 'null?) C) 
            ((eq? a 'eq?) C) 
            ((eq? a 'atom?) C) 
            ((eq? a 'zero?) C) 
            ((eq? a 'add1) C) 
            ((eq? a 'sub1) C) 
            ((eq? a 'number?) C) 
            (else I)))))

(define list-to-action 
  (lambda (l) 
    (let ((Q *quote) 
          (L *lambda) 
          (C *cond) 
          (A *application) 
          (e (car l))) 
      (cond ((atom? e) 
             (cond ((eq? e 'quote) Q) 
                   ((eq? e 'lambda) L) 
                   ((eq? e 'cond) C) 
                   (else A))) 
            (else A)))))

(define expression-to-action 
  (lambda (e) 
    (cond ((atom? e) 
           (atom-to-action e)) 
          (else (list-to-action e)))))






;; **********************
;; Define the interpreter
;; **********************

(define value 
  (lambda (e) 
    (meaning e '())))

(define meaning 
  (lambda (e table) 
    ((expression-to-action e) e table)))

(define *const 
  (lambda (e table) 
    (cond ((number? e) e) 
          ((eq? e #t) #t) 
          ((eq? e #f) #f) 
          (else (build 'primitive e)))))

(define *quote 
  (lambda (e table) 
    (text-of e)))

(define text-of second)

;; An "always fail" function that represents bad state
(define initial-table 
  (lambda (name) 
    (car '())))

(define *identifier 
  (lambda (e table) 
    (lookup-in-table e table initial-table)))

(define *lambda 
  (lambda (e table) 
    (build 'non-primitive (cons table (cdr e)))))

(define table-of first)

(define formals-of second)

(define body-of third)

(define evcon 
  (lambda (lines table) 
    (cond ((else? (question-of (car lines))) 
           (meaning (answer-of (car lines)) table)) 
          ((meaning (question-of (car lines)) table) 
           (meaning (answer-of (car lines) table))) 
          (else (evcon (cdr lines) table)))))

(define question-of first)

(define answer-of second)

(define else?
  (lambda (x)
    (cond ((atom? x) (eq? x 'else))
          (else #f))))

(define *cond
  (lambda (e table)
    (evcon (cond-lines-of e) table)))

(define cond-lines-of cdr)

