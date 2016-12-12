;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname image) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(define a (circle 10 "outline" "red"))
(define b (rectangle 6 10 "solid" "blue"))
(define c (text "hello" 18 "orange"))
(above a b c)
(beside a b c)
(overlay a b c)