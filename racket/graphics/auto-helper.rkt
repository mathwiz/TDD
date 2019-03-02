;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname auto-helper) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define CELL_SIZE 16)
(define CELL_NUM 32)
(define WIDTH  (* CELL_SIZE CELL_NUM))
(define HEIGHT  (* CELL_SIZE CELL_NUM))
(define SPEED 1)

(define-struct cell (x y on))


(define (take l n)
  (cond ((= n 0) empty)
        (else (cons (first l) (take (rest l) (sub1 n))))))


(define (recycle-list len acc seed)
  (cond ((<= len 0)             acc)
        ((< (- len (length seed)) 0) (append acc (take seed len)))
        (else                      (recycle-list (- len (length seed)) (append acc seed) seed))))


(define (create-row-by-pattern n pat)
  (recycle-list n empty pat))


(define (build-random it acc)
  (cond ((= 0 it) acc)
        (else (build-random (sub1 it) (cons (if (< (random 2) 1) #f #t) acc)))))


(define (create-row-random n)
  (build-random n empty))


(define (row-cell n bool)
  (make-cell (* n CELL_SIZE) 0 bool))


(define (row-of-cells n lob acc)
  (cond ((empty? lob) acc)
        (else (row-of-cells (add1 n) (rest lob) (cons (row-cell n (first lob)) acc)))))


(define (create-row size pat)
  (reverse (if (empty? pat)
               (row-of-cells 0 (create-row-random size) empty)
               (row-of-cells 0 (create-row-by-pattern size pat) empty))))

(define (from l n)
  (cond ((empty? l) empty)
        ((= n 0) l)
        (else (from (rest l) (sub1 n)))))

(define (nth l n)
  (cond ((empty? l) #f)
        ((>= n (length l)) #f)
        (else (first (from l n)))))

(define (last l)
  (nth l (sub1 (length l))))


;;; Tests
(check-expect (from '(1 2 3 4) 0) '(1 2 3 4))
(check-expect (from '(1 2 3 4) 1) '(2 3 4))
(check-expect (from '(1 2 3 4) 3) '(4))
(check-expect (from '(1 2 3 4) 4) empty)
(check-expect (from empty 0) empty)
(check-expect (nth '(1 2 3 4) 0) 1)
(check-expect (nth '(1 2 3 4) 1) 2)
(check-expect (nth '(1 2 3 4) 3) 4)
(check-expect (nth '(1 2 3 4) 4) #f)
(check-expect (nth empty 0) #f)
(check-expect (last '(1 2 3 4)) 4)
