;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname big-bang-example) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(require 2htdp/image)

(place-image
   (triangle 32 "solid" "red")
   24 24
   (rectangle 48 48 "solid" "gray"))

(big-bang 0                       ; Cat
          (on-tick next-cat)      ; Cat -> Cat
          (to-draw render-cat))   ; Cat -> Image