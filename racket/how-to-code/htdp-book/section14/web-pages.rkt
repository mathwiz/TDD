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
(define WPA (cons WP1 WP0))
(define WP2 (cons (list 'another 'set 'of 'words) WP1))
(define WP3 (cons WP2 WP1))

(define (fn-for-wp wp)
  (cond ((empty? wp) (...))
        ((symbol=? (first wp)) (... (first wp) ... (fn-for-wp (rest wp))))
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

;; * size
;; WP -> Natural
;; produce the number of symbols on wp
(check-expect (size WP0) 0)
(check-expect (size WP1) 1)
(check-expect (size WPA) 1)
(check-expect (size WP2) 5)
;(define (size wp) 0) ; stub
(define (size wp)
  (cond ((empty? wp) 0)
        ((symbol? (first wp)) (+ 1 (size (rest wp))))
        (else (+ (size (first wp)) (size (rest wp))))))
