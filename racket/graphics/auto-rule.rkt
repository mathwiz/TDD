;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname auto-rule) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

;;; Helpers
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



;;; Existing
(define CELL_SIZE 16)
(define CELL_NUM 8)
(define WIDTH  (* CELL_SIZE CELL_NUM))
(define HEIGHT  (* CELL_SIZE CELL_NUM))

(define SPEED 1)
(define ON (rectangle CELL_SIZE CELL_SIZE "solid" "blue"))
(define OFF (rectangle CELL_SIZE CELL_SIZE "solid" "white"))

(define (R30 l c r)
  (or (and l (not c) (not r))
      (and (not l) c r)
      (and (not l) c (not r))
      (and (not l) (not c) r)))

(define RULE R30)

(define-struct cell (x y on))

(define (tick-cells lod)
  (cond [(empty? lod) empty]
        [else 
         (cons (tick-cell (first lod))
               (tick-cells (rest lod)))]))

;; cell -> cell
;; produce a new cell that is one pixel farther down the screen
(define (tick-cell d)
  (make-cell (cell-x d) (+ SPEED (cell-y d)) (cell-on d)))



;;; New
(define (evolve-cells lod)
  (let ([row (take lod CELL_NUM)])
    (append (evolve-row row) (tick-cells lod))))


(define (evolve-row row)
  (letrec ([iter (lambda (n acc)
                   (cond ((< n 0) acc)
                         (else (iter (sub1 n) (cons (evolve-cell row n RULE) acc)))))])
    (iter (sub1 (length row)) empty)))


(define (evolve-cell row index rule)
  (let* ([cell (nth row index)]
        [left (if (= index 0) (last row) (nth row (sub1 index)))]
        [right (if (= index (sub1 (length row))) (first row) (nth row (add1 index)))]
        [next-state (rule (cell-on left) (cell-on cell) (cell-on right))]
        )
    (make-cell (cell-x cell) (cell-y cell) next-state)))




;;; Tests

(define START (create-row 8 '(#t #f #f #t #t #f #f #f)))
(check-expect (length (evolve-cells (evolve-cells START))) 24)
(check-expect (evolve-row START) (list
                                  (make-cell 0 0 #true)
                                  (make-cell 16 0 #true)
                                  (make-cell 32 0 #true)
                                  (make-cell 48 0 #true)
                                  (make-cell 64 0 #false)
                                  (make-cell 80 0 #true)
                                  (make-cell 96 0 #false)
                                  (make-cell 112 0 #true)))

(check-expect (evolve-cell START 0 R30) (make-cell 0 0 #true))
(check-expect (evolve-cell START 1 R30) (make-cell 16 0 #true))
(check-expect (evolve-cell START 2 R30) (make-cell 32 0 #true))
(check-expect (evolve-cell START 6 R30) (make-cell 96 0 #false))
(check-expect (evolve-cell START 7 R30) (make-cell 112 0 #true))

