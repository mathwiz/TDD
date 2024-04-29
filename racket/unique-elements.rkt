#lang racket
(define lst '(1 2 3 4 4 5 6 6 7 8 8 8 8))
(define ulst '(1 2 3))
(define lst2 '(1 1 3))

(define (has-only-unique-elements-p lst)
  (or (null? lst)
      (and (not (member (car lst) (cdr lst)))
           (has-only-unique-elements-p (cdr lst)))))

(has-only-unique-elements-p lst)
(has-only-unique-elements-p ulst)

(define (get-unique-elements lst)
  (letrec ((recur (lambda (current seen acc)
                    (cond ((null? current) acc)
                          ((or (member (car current) (cdr current))
                               (member (car current) seen))
                           (recur (cdr current) (cons (car current) seen) acc))
                          (else (recur (cdr current) seen (cons (car current) acc)))))))
    (recur lst '() '()))
)

(define (my-remove-duplicates lst)
  (letrec ((recur (lambda (current seen acc)
                    (cond ((null? current) acc)
                          ((member (car current) seen)
                           (recur (cdr current) seen acc))
                          (else
                           (recur (cdr current) (cons (car current) seen) (cons (car current) acc)))))))
    (recur lst '() '()))
)


(get-unique-elements lst)
(get-unique-elements lst2)
(get-unique-elements ulst)
(get-unique-elements '())
(my-remove-duplicates lst)
(my-remove-duplicates lst2)
(my-remove-duplicates ulst)
(my-remove-duplicates '())
