;; Programming Languages, Homework 5

#lang racket
(provide (all-defined-out)) ;; so we can put tests in a second file

;; definition of structures for MUPL programs - Do NOT change
(struct var  (string) #:transparent)  ;; a variable, e.g., (var "foo")
(struct int  (num)    #:transparent)  ;; a constant number, e.g., (int 17)
(struct add  (e1 e2)  #:transparent)  ;; add two expressions
(struct ifgreater (e1 e2 e3 e4)    #:transparent) ;; if e1 > e2 then e3 else e4
(struct fun  (nameopt formal body) #:transparent) ;; a recursive(?) 1-argument function
(struct call (funexp actual)       #:transparent) ;; function call
(struct mlet (var e body) #:transparent) ;; a local binding (let var = e in body) 
(struct apair (e1 e2)     #:transparent) ;; make a new pair
(struct fst  (e)    #:transparent) ;; get first part of a pair
(struct snd  (e)    #:transparent) ;; get second part of a pair
(struct aunit ()    #:transparent) ;; unit value -- good for ending a list
(struct isaunit (e) #:transparent) ;; evaluate to 1 if e is unit else 0

;; a closure is not in "source" programs; it is what functions evaluate to
(struct closure (env fun) #:transparent) 

;; Problem 1

;; CHANGE (put your solutions here)
(define racketlist->mupllist 
  (lambda (x)
    (cond [(null? x) null]
          [#t (cons (eval-exp (car x)) (racketlist->mupllist (cdr x)))])))

(define mupllist->racketlist 
  (lambda (x)
    (cond [(null? x) null]
          [#t (cons (eval-exp (car x)) (mupllist->racketlist (cdr x)))])))

(define (test f) 
  (let ([x (list (int 1) (int 2) (int 3) (int 4)  (int 5))])
  (f x)))

(define test-add (add (int 1) (int 2)))

;; Problem 2

;; lookup a variable in an environment
;; Do NOT change this function
(define (envlookup env str)
  (cond [(null? env) (error "unbound variable during evaluation" str)]
        [(equal? (car (car env)) str) (cdr (car env))]
        [#t (envlookup (cdr env) str)]))

;; Do NOT change the two cases given to you.  
;; DO add more cases for other kinds of MUPL expressions.
;; We will test eval-under-env by calling it directly even though
;; "in real life" it would be a helper function of eval-exp.
(define (eval-under-env e env)
  (cond [(var? e) 
         (envlookup env (var-string e))]
        [(add? e) 
         (let ([v1 (eval-under-env (add-e1 e) env)]
               [v2 (eval-under-env (add-e2 e) env)])
           (if (and (int? v1)
                    (int? v2))
               (int (+ (int-num v1) 
                       (int-num v2)))
               (error "MUPL addition applied to non-number")))]
        ;; CHANGE add more cases here
        [(int? e)
         e]
        [(ifgreater? e)
         (let ([v1 (eval-under-env (ifgreater-e1 e) env)]
               [v2 (eval-under-env (ifgreater-e2 e) env)])
           (if (and (int? v1)
                    (int? v2))
                    (if (> (int-num v1)
                           (int-num v2))
                        (eval-under-env (ifgreater-e3 e) env)
                        (eval-under-env (ifgreater-e4 e) env))
                    (error "MUPL ifgreater applied to non-number")))]
        [(apair? e)
         e]
        [(fun? e)
         (let ([s1 (fun-nameopt e)]
               [s2 (fun-formal e)])
           (if (and (string? s1) (string? s2))
               e
               (error "MUPL fun not a fun")))]
        [(call? e)
         (letrec ([f (eval-under-env (call-funexp e) env)]
                  [act (eval-under-env (call-actual e) env)]
                  [v (var (fun-formal f))]
                  [body (eval-under-env (fun-body f) env)])
           (if (fun? f)
               (eval-under-env body env)
               (error "MUPL call applied to non-fun")))]
        [(mlet? e)
         (letrec ([v (var (mlet-var e))]
                  [exp (eval-under-env (mlet-e e) env)]
                  [body (eval-under-env (mlet-body e) env)])
           (let ([v exp])
             (body)))]
        [(fst? e)
         (let ([v1 (eval-under-env (fst-e e) env)])
           (if (apair? v1)
               (apair-e1 v1)
               (error "MUPL fst applied to non-apair")))]
        [(snd? e)
         (let ([v1 (eval-under-env (snd-e e) env)])
           (if (apair? v1)
               (apair-e2 v1)
               (error "MUPL snd applied to non-apair")))]
        [(aunit? e)
         (aunit)] 
        [(isaunit? e)
          (let ([v1 (eval-under-env (isaunit-e e) env)])
            (cond [(aunit? v1) 1]
                  [#t 0]))]
        [(closure? e)
         e]
        [#t (error "bad MUPL expression")]))

(define iftest (ifgreater (int 3) (int 2) (aunit) (int 0)))
(define mypair (apair (aunit) (int 1)))
(define myfun (fun "do" "p" (int 2)))
(define double (fun "double" "n" (add (int 2) (int 3))))
(define env (list (cons "x" 1) (cons "y" 2) (cons "z" 3))) 
;; Do NOT change
(define (eval-exp e)
  (eval-under-env e null))
        
;; Problem 3

(define (ifaunit e1 e2 e3) "CHANGE")

(define (mlet* lstlst e2) "CHANGE")

(define (ifeq e1 e2 e3 e4) "CHANGE")

;; Problem 4

(define mupl-map "CHANGE")

(define mupl-mapAddN 
  (mlet "map" mupl-map
        "CHANGE (notice map is now in MUPL scope)"))

;; Challenge Problem

(struct fun-challenge (nameopt formal body freevars) #:transparent) ;; a recursive(?) 1-argument function

;; We will test this function directly, so it must do
;; as described in the assignment
(define (compute-free-vars e) "CHANGE")

;; Do NOT share code with eval-under-env because that will make
;; auto-grading and peer assessment more difficult, so
;; copy most of your interpreter here and make minor changes
(define (eval-under-env-c e env) "CHANGE")

;; Do NOT change this
(define (eval-exp-c e)
  (eval-under-env-c (compute-free-vars e) null))
