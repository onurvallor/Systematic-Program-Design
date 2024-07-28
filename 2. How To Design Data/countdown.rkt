;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname countdown) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; CountDown is one of:
;; - false
;; - Natural [1, 10]
;; - "complete
;; interp.
;;         false          means the timer is started,
;;         Natural[1, 10] means countdown starting from 10 and ending 1,
;;         "complete"     means the countdown is done.

(define CD1 false)
(define CD2 10)
(define CD3 1)
(define CD4 "complete")

(define (fn-for-countdown c)
  (cond [false? (...)]
        [(and (number? c) (<= c 10) (>= c 1)) (... c)]
        [(string=? "complete") (...)]
  ))

;; Template rule used:
;; - one of: 3 cases
;; - atomic distinct:     false
;; - atomic non-distinct: Natural[1, 10]
;; - atomic distinct:     "complete"