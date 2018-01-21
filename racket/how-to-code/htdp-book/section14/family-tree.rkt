;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname family-tree) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; ===============================
;; Data definitions

;; Child is (make-child Symbol Symbol Symbol Natural Symbol)
;; interp. a family tree node with:
;; f: father
;; m: mother
;; na: name
;; da: date
;; ec: eye color
(define-struct child (father mother name date eyes))


;; family-tree-node (ftn) is one of:
;; - empty
;; - (make-child f m na da ec)
(define FTN0 empty)
(define Carl (make-child empty empty 'Carl 1926 'green))
(define Bettina (make-child empty empty 'Bettina 1926 'green))
(define Adam (make-child Carl Bettina 'Adam 1950 'yellow))
(define Dave (make-child Carl Bettina 'Dave 1955 'black))
(define Eva (make-child Carl Bettina 'Eva 1965 'blue))
(define Fred (make-child empty empty 'Fred 1966 'pink))
(define Gustav (make-child Fred Eva 'Gustav 1988 'brown))
#;
(define (fn-for-ftn ftn)
  (cond ((empty? ftn) (...))
        (else
         (... (fn-for-ftn (child-father ftn)) ...
              ... (fn-for-ftn (child-mother ftn)) ...
              ... (child-name ftn) ...
              ... (child-date ftn) ...
              ... (child-eyes ftn) ...))))


;; ===============================
;; Function definitions

;; * blue-eyed-ancestor?
;; ftn -> Boolean
;; produce tree if tree contains a child with blue eyes
(check-expect (blue-eyed-ancestor? FTN0) false)
(check-expect (blue-eyed-ancestor? Gustav) true)
(check-expect (blue-eyed-ancestor? Eva) true)
(check-expect (blue-eyed-ancestor? Adam) false)
;;(define (blue-eyed-ancestor? ftn) false) ; stub
(define (blue-eyed-ancestor? ftn)
  (cond ((empty? ftn) false)
        (else
         (or (symbol=? (child-eyes ftn) 'blue) 
             (blue-eyed-ancestor? (child-father ftn))
             (blue-eyed-ancestor? (child-mother ftn))))))


;; * proper-blue-eyed-ancestor?
;; ftn -> Boolean
;; produce tree if tree contains a child with blue eyes
(check-expect (proper-blue-eyed-ancestor? FTN0) false)
(check-expect (proper-blue-eyed-ancestor? Gustav) true)
(check-expect (proper-blue-eyed-ancestor? Eva) false)
(check-expect (proper-blue-eyed-ancestor? Adam) false)
;(define (proper-blue-eyed-ancestor? ftn) false) ; stub
(define (proper-blue-eyed-ancestor? ftn)
  (cond ((empty? ftn) false)
        (else
         (or (blue-eyed-ancestor? (child-father ftn))
             (blue-eyed-ancestor? (child-mother ftn))))))


;; * count-persons
;; ftn -> Natural
;; produce the number of persons in a tree
(check-expect (count-persons FTN0) 0)
(check-expect (count-persons Carl) 1)
(check-expect (count-persons Eva) 3)
(check-expect (count-persons Gustav) 5)
;(define (count-persons ftn) 0) ; stub
(define (count-persons ftn)
  (cond ((empty? ftn) 0)
        (else
         (+ 1
            (count-persons (child-father ftn))
            (count-persons (child-mother ftn))))))


;; * average-age
;; ftn Natural -> Number
;; produce the average age of tree given the current year
(check-expect (average-age FTN0 1988) 0)
(check-expect (average-age Gustav 1988) (/ 169 5))
(check-expect (average-age Eva 1988) (/ (+ 62 62 23) 3))
(check-expect (average-age Carl 1988) 62)
;(define (average-age ftn year) 0) ; stub
(define (average-age ftn year)
  (average (every-age (every-date ftn) year)))

;; ftn -> ListOfNatural
;; produce all the values of a tree that can be pulled out be extractor
(check-expect (every-date empty) empty)
(check-expect (every-date Eva) (list 1926 1926 1965))
;(define (every-date ftn) empty) ; stub
(define (every-date ftn)
  (cond ((empty? ftn) empty)
        (else
         (append (every-date (child-father ftn))
                 (every-date (child-mother ftn))
                 (list (child-date ftn))))))

;; Natural Natural -> Natural
;; produce an age given a date and a year
(check-expect (age 1988 1988) 0)
(check-expect (age 1926 1988) 62)
(define (age date year) (- year date)) 

;; ListOfNatural Natural -> ListOfNatural
;; produce a list of ages for a list of dates and year
(check-expect (every-age empty 1988) empty)
(check-expect (every-age (list 1926 1926 1965) 1988) (list 62 62 23))
;(define (every-age dates year) empty) ; stub
(define (every-age dates year)
  (cond ((empty? dates) empty)
        (else (cons (age (first dates) year) (every-age (rest dates) year)))))

;; ListOfNumber -> Number
;; produce the average of input list
(check-expect (average empty) 0)
(check-expect (average (list 3)) 3)
(check-expect (average (list 1 2 3)) (/ (+ 1 2 3) 3))
;(define (average nums) 0) ; stub
(define (average nums)
  (average-aux nums 0 0))
(define (average-aux xs i acc)
  (cond ((empty? xs) (if (= i 0) 0 (/ acc i)))
        (else (average-aux (rest xs) (+ i 1) (+ acc (first xs))))))


;; * eye-colors
;; ftn -> ListOfSymbol
;; produce a list of all eye colors in a tree
(check-expect (eye-colors empty) empty)
(check-expect (eye-colors Carl) (list 'green))
(check-expect (eye-colors Gustav) (list 'brown 'pink 'blue 'green 'green))
;(define (eye-colors ftn) empty) ; stub
(define (eye-colors ftn)
  (cond ((empty? ftn) empty)
        (else
         (append 
          (list (child-eyes ftn))
          (eye-colors (child-father ftn))
          (eye-colors (child-mother ftn))))))
