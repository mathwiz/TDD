;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname names-under-20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct person (name age children))
(define P1 (make-person "N1" 1 empty))
(define P2 (make-person "N2" 37 (list P1)))
(define P3 (make-person "N3" 5 empty))
(define P4 (make-person "N4" 60 (list P3 P1)))

;; Template
;; Template rules used: Mutual reference
#;
(define (fn-for-person p)
  (local [(define (fn-for-elem e)
            (... (person-name e)
                 (person-age e)
                 (fn-for-lop (person-children e))))
          
          (define (fn-for-lop lop)
            (cond ((empty? lop) (...))
                  (else
                   (... (fn-for-elem (first lop))
                        (fn-for-lop (rest lop))))))]
    
    (fn-for-elem p)))

;; Person -> ListOfString
;; ListOfPerson -> ListOfString
;; produce a list of the names of the persons under 20

(check-expect (names-under-20 P1) (list "N1"))
(check-expect (names-under-20 P2) (list "N1"))
(check-expect (names-under-20 P4) (list "N3" "N1"))

;(define (names-under-20 p) empty) ;stub

(define (names-under-20 p)
  (local [(define (fn-for-elem e)
            (if (< (person-age e) 20)
                (cons (person-name e)
                      (fn-for-lop (person-children e)))
                (fn-for-lop (person-children e))))
          
          (define (fn-for-lop lop)
            (cond ((empty? lop) empty)
                  (else
                   (append (fn-for-elem (first lop))
                           (fn-for-lop (rest lop))))))]
    
    (fn-for-elem p)))
