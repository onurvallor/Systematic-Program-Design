;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname square_area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; Number -> Number
;; Given a length of a single side of a square, calculate area.

(check-expect (square-area 2) 4)
(check-expect (square-area 7) 49)

;(define (square-area side) 0) ;stub

;(define (square-area side) ;template
;  (... side))

(define (square-area side)
  (* side side))
