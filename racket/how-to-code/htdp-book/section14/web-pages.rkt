;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname web-pages) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; ======================================================
;; Data definitions

;; web-page (wp) is one of:
;; - empty
;; - (cons Symbol Web-page)
;; - (cons Web-page Web-page)
(define WP0 empty)
(define WP1 (cons 'word WP0))
(define WPA (cons WP1 WP1))
(define WP2 (cons (list 'another 'set 'of 'words) WP1))
(define WP3 (cons WP2 WP1))
(define WP4 (list 'another 'set 'of 'words))
#;
(define (fn-for-wp wp)
  (cond ((empty? wp) (...))
        ((symbol? (first wp)) (... (first wp) ... (fn-for-wp (rest wp))))
        (else (...
               (fn-for-wp (first wp))
               ...
               (fn-for-wp (rest wp))))))
;; Template rules used:
;; - one of 3 cases:
;; - atomic distinct: empty
;; - compound: (cons Symbol Web-page)
;; - compound: (cons Web-page Web-page)
;; - self-reference: (rest wp) is Web-page


;; ======================================================
;; Function definitions

;; * size *
;; WP -> Natural
;; Produce the number of symbols on wp
(check-expect (size WP0) 0)
(check-expect (size WP1) 1)
(check-expect (size WPA) 2)
(check-expect (size WP2) 5)
;(define (size wp) 0) ; stub
(define (size wp)
  (cond ((empty? wp) 0)
        ((symbol? (first wp)) (+ 1 (size (rest wp))))
        (else (+ (size (first wp)) (size (rest wp))))))


;; * occurs1 *
;; WP Symbol -> Natural
;; Produce the number of times s occurs in wp, ignoring embedded wps
(check-expect (occurs1 empty 'word) 0)
(check-expect (occurs1 (list 'word) 'word) 1)
(check-expect (occurs1 (list (list 'word) (list 'word)) 'word) 0)
(check-expect (occurs1 (list 'word) 'foo) 0)
(check-expect (occurs1 (list 'another 'set 'of 'words) 'words) 1)
(check-expect (occurs1 (list (list 'word) 'word) 'word) 1)
(check-expect (occurs1 (list (list 'another 'set 'of 'words) 'word) 'words) 0)
(check-expect (occurs1 (list (list 'another 'set 'of 'words) (list 'word 'words)) 'words) 0)
;(define (occurs1 wp s) 0) ; stub
(define (occurs1 wp s)
  (cond ((empty? wp) 0)
        ((symbol? (first wp)) (+ (if (symbol=? (first wp) s) 1 0) (occurs1 (rest wp) s)))
        (else (occurs1 (rest wp) s))))


;; * occurs2 *
;; WP Symbol -> Natural
;; Produce the number of times s occurs in wp, including embedded wps
(check-expect (occurs2 empty 'word) 0)
(check-expect (occurs2 (list 'word) 'word) 1)
(check-expect (occurs2 (list (list 'word) (list 'word)) 'word) 2)
(check-expect (occurs2 (list 'word) 'foo) 0)
(check-expect (occurs2 (list 'another 'set 'of 'words) 'words) 1)
(check-expect (occurs2 (list (list 'word) 'word) 'word) 2)
(check-expect (occurs2 (list (list 'another 'set 'of 'words) 'word) 'words) 1)
(check-expect (occurs2 (list (list 'another 'set 'of 'words) (list 'word 'words)) 'words) 2)
;(define (occurs2 wp s) 0) ; stub
(define (occurs2 wp s)
  (cond ((empty? wp) 0)
        ((symbol? (first wp)) (+ (if (symbol=? (first wp) s) 1 0) (occurs2 (rest wp) s)))
        (else (+ (occurs2 (first wp) s) (occurs2 (rest wp) s)))))


;; * replace *
;; Symbol Symbol WP -> WP
;; Produce a new WP structurally identical to wp where all occurrencs of old are replaced by new
(check-expect (replace 'word 'bar empty) empty)
(check-expect (replace 'word 'bar (list 'word)) (list 'bar))
(check-expect (replace 'word 'bar (list (list 'word) (list 'word))) (list (list 'bar) (list 'bar)))
(check-expect (replace 'word 'bar (list 'foo)) (list 'foo))
(check-expect (replace 'word 'bar (list (list 'word 'foo) (list 'word (list 'word 'foo)))) (list (list 'bar 'foo) (list 'bar (list 'bar 'foo))))
;;(define (replace old new wp) empty) ; stub
(define (replace old new wp)
  (cond ((empty? wp) empty)
        ((symbol? (first wp)) 
         (cons (if (symbol=? (first wp) old) new (first wp)) (replace old new (rest wp))))
        (else 
         (cons (replace old new (first wp)) (replace old new (rest wp))))))


;; * depth *
;; WP -> Natural
;; Produce the number of pages that are embedded in wp. 
;; A WP containing only symbols has depth 0
;; A WP containing embedded pages has the max of embedded WP plus 1
(check-expect (depth empty) 0)
(check-expect (depth (list 'word)) 0)
(check-expect (depth (list (list 'word) (list 'word))) 1)
(check-expect (depth (list (list 'word 'foo) (list 'word (list 'word 'foo)))) 2)
(check-expect (depth (list (list (list (list 'baz) 'bar) 'foo) (list 'word (list 'word 'foo)))) 3)
;(define (depth wp) 0) ; stub
(define (depth wp)
  (cond ((empty? wp) 0)
        ((symbol? (first wp)) (depth (rest wp)))
        (else (max (+ 1 (depth (first wp))) (depth (rest wp))))))
  