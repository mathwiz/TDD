;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname bst) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; ======================================================
;; Data definitions

(define-struct node (ssn name left right))
;; node is (make-node (ssn name left right))
;; interp. a node of a BT with:
;; - ssn: social security number
;; - name: person's name
;; - left: node with smaller ssn
;; - right: node with larger ssn

;; BT is one of:
;; - false
;; - (make-node soc pn lft rgt) 
;; interp. a tree of nodes where soc is Number, pn is Symbol, lft is BT, rgt is BT
(define BT10 (make-node 10 'bt10 false false))
(define BT24 (make-node 24 'bt24 false false))
(define BT99 (make-node 99 'bt99 false false))
(define BT15 (make-node 15 'bt15 BT10 BT24))
(define BT77 (make-node 77 'bt77 false false))
(define BT95 (make-node 95 'bt95 false BT99))
(define BT29 (make-node 29 'bt29 BT15 false))
(define BT89 (make-node 89 'bt89 BT77 BT95))
(define BT63 (make-node 63 'bt63 BT29 BT89))
(define TREEA BT63)
(define TREEB87 (make-node 87 'bt87 false false))
(define TREEB24 (make-node 24 'bt24 false false))
(define TREEB99 (make-node 99 'bt99 false false))
(define TREEB15 (make-node 15 'bt15 TREEB87 TREEB24))
(define TREEB77 (make-node 77 'bt77 false false))
(define TREEB95 (make-node 95 'bt95 false TREEB99))
(define TREEB29 (make-node 29 'bt29 TREEB15 false))
(define TREEB89 (make-node 89 'bt89 TREEB77 TREEB95))
(define TREEB63 (make-node 63 'bt63 TREEB29 TREEB89))
(define TREEB TREEB63)
#;
(define (fn-for-BT bt)
  (cond ((false? bt) (...))
        (else (... (node-ssn bt)
                   (node-name bt)
                   (fn-for-BT (node-left bt))
                   (fn-for-BT (node-right bt))))))
;; Template rules used:
;; - compound: 4 fields


;; ListOfNumberAndName is one of:
;; - empty
;; - (cons (list Number Symbol) ListOfNumberAndName)
;; interp. a list of numbers and names that represents data for a BT
(define LISTTREEA
  (list 
   (list 99 'bt99)
   (list 77 'bt77)
   (list 24 'bt24)
   (list 10 'bt10)
   (list 95 'bt95)
   (list 15 'bt15)
   (list 89 'bt89)
   (list 29 'bt29)
   (list 63 'bt63)))
#;
(define (fn-for-lnn lnn)
  (cond ((empty? lnn) (...))
        (else (... (first lnn) (fn-for-lnn (rest lnn))))))
;; Template rules used:
;; - one of 2 cases:
;; - atomic distinct: empty


;; BST is one of:
;; - false
;; - (make-node soc pn lft rgt) 
;; interp. same as BT where (node-ssn (node-left bt)) < (node-ssn bt) and (node-ssn bt) < (node-ssn (node-right bt))
(define BST1 TREEA)


;; ======================================================
;; Function definitions

;; Number BT -> Boolean
;; produce true if n is in bt
(check-expect (contains-bt? 99 TREEA) true)
(check-expect (contains-bt? 63 TREEA) true)
(check-expect (contains-bt? 100 TREEA) false)
;(define (contains-bt? n bt) false) ; stub

(define (contains-bt? n bt)
  (cond ((false? bt) false)
        (else (or (eq? n (node-ssn bt))
                  (contains-bt? n (node-left bt))
                  (contains-bt? n (node-right bt))))))


;; Number BT -> Symbol
;; produce the pn field if a bt contains n
(check-expect (search-bt 99 TREEB) 'bt99)
(check-expect (search-bt 63 TREEB) 'bt63)
(check-expect (search-bt 15 TREEB) 'bt15)
(check-expect (search-bt 100 TREEB) false)
;(define (search-bt n bt) 'nothing) ; stub

(define (search-bt n bt)
  (cond ((false? bt) false)
        ((eq? n (node-ssn bt)) (node-name bt))
        ((contains-bt? n (node-left bt)) (search-bt n (node-left bt)))
        ((contains-bt? n (node-right bt)) (search-bt n (node-right bt)))
        (else false)))


;; BT -> ListOfNumber
;; produce a list of the ssns in bt
(check-expect (inorder false) empty)
(check-expect (inorder BT10) (list 10))
(check-expect (inorder BT95) (list 95 99))
(check-expect (inorder TREEA) (list 10 15 24 29 63 77 89 95 99))
;(define (inorder bt) empty) ; stub
(define (inorder bt)
  (cond ((false? bt) empty)
        (else (append (inorder (node-left bt)) 
                      (list (node-ssn bt))
                      (inorder (node-right bt))))))


;; Number BST -> Symbol
;; produce the pn field if a bst contains n
(check-expect (search-bst 99 TREEA) 'bt99)
(check-expect (search-bst 63 TREEA) 'bt63)
(check-expect (search-bst 15 TREEA) 'bt15)
(check-expect (search-bst 100 TREEA) false)
;(define (search-bst n bst) false) ; stub

(define (search-bst n bst)
  (cond ((false? bst) false)
        ((eq? n (node-ssn bst)) (node-name bst))
        (else (if (< n (node-ssn bst))
                  (search-bst n (node-left bst))
                  (search-bst n (node-right bst))))))


;; BST Number Symbol -> BST
;; produce a new BST from bst where (make-node n s false false) is placed in left or right
(check-expect (create-bst false 10 'bt10) BT10)
(check-expect (create-bst BT10 15 'bt15) (make-node (node-ssn BT10) (node-name BT10) false (make-node 15 'bt15 false false)))
(check-expect (create-bst BT10 5 'bt5) (make-node (node-ssn BT10) (node-name BT10) (make-node 5 'bt5 false false) false))
(check-expect
 (create-bst
  (create-bst
   (create-bst
    (create-bst
     (create-bst
      (create-bst
       (create-bst 
        (create-bst 
         (create-bst false 63 'bt63) 
         29 'bt29)
        89 'bt89)
       15 'bt15)
      95 'bt95)
     10 'bt10)
    24 'bt24)
   77 'bt77)
  99 'bt99)
 TREEA)
;(define (create-bst bst n s) false) ; stub

(define (create-bst bst n s)
  (cond ((false? bst) (make-node n s false false))
        ((eq? n (node-ssn bst)) bst)
        ((< n (node-ssn bst)) 
         (make-node (node-ssn bst) (node-name bst) (create-bst (node-left bst) n s) (node-right bst))) 
        ((> n (node-ssn bst)) 
         (make-node (node-ssn bst) (node-name bst) (node-left bst) (create-bst (node-right bst) n s))))) 


;; ListOfNumberAndName -> BST
;; produce a BST 
(check-expect (create-bst-from-list empty) false)
(check-expect (create-bst-from-list LISTTREEA) TREEA)
;(define (create-bst-from-list lst) false) ; stub
(define (create-bst-from-list lnn)
  (cond ((empty? lnn) false)
        (else (create-bst (create-bst-from-list (rest lnn)) (first (first lnn)) (first (rest (first lnn)))))))
