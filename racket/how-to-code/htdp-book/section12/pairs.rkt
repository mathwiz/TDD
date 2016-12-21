;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pairs) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; list-of-letters -> list-of-pairs
;; Produce a list of all of the pairs given a list of symbols
(check-expect (pairs (list 'a 'b 'c)) (list (list 'a 'a) (list 'a 'b) (list 'a 'c) (list 'b 'a) (list 'b 'b) (list 'b 'c) (list 'c 'a) (list 'c 'b) (list 'c 'c)))

(define (pairs letters)
  (pairer letters letters))

(define (pairer xs orig)
  (cond ((empty? xs) empty)
        (else (append (make-pairs (first xs) orig) (pairer (rest xs) orig)))))

(define (make-pairs x xs)
  (cond ((empty? xs) empty)
        (else (cons (list x (first xs)) (make-pairs x (rest xs))))))

;(make-pairs 'a (list 'a 'b 'c))
;(pairs (list 'a 'b 'c))


;; Symbol List -> List
;; Permute a list with a symbol. Keep the original list in order but each permutation has symbol
;; at each location from before start to after end (N+1 permutations where N is list length).
(check-expect (do-inserts 'z (list 'a 'b) 2) 
              (cons (cons 'a (cons 'b (cons 'z empty))) (cons (cons 'a (cons 'z (cons 'b empty))) (cons (cons 'z (cons 'a (cons 'b empty))) empty))))

(define (insert x loc xs acc)
  (cond ((empty? xs) (if (= loc (length acc)) (append acc (list x)) acc))
        ((= loc (length acc)) (insert x loc (rest xs) (append acc (list x (first xs)))))
        (else (insert x loc (rest xs) (append acc (list (first xs)))))))

(define (do-inserts x xs n)
  (cond ((< n 0) empty)
        (else (cons (insert x n xs empty) (do-inserts x xs (- n 1))))))

(define (all-locations x xs)
  (cons (do-inserts x xs (length xs)) empty))

(define X1 (list 'a 'b))
(all-locations 'z X1)

(check-expect (insert 'x 0 (list 'a 'b 'c) empty) (cons 'x (cons 'a (cons 'b (cons 'c empty)))))
(check-expect (insert 'x 1 (list 'a 'b 'c) empty) (cons 'a (cons 'x (cons 'b (cons 'c empty)))))
(check-expect (insert 'x 2 (list 'a 'b 'c) empty) (cons 'a (cons 'b (cons 'x (cons 'c empty)))))
(check-expect (insert 'x 3 (list 'a 'b 'c) empty) (cons 'a (cons 'b (cons 'c (cons 'x empty)))))

(check-expect (list  (cons 'a (cons 'b (cons 'z empty))) (cons 'a (cons 'b (cons 'z empty))))
              (cons (cons 'a (cons 'b (cons 'z empty))) (cons (cons 'a (cons 'b (cons 'z empty))) empty)))