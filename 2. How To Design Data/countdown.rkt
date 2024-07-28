;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname countdown) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

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

#;
(define (fn-for-countdown c)
  (cond [(false? c) (...)]
        [(and (number? c) (<= c 10) (>= c 1)) (... c)]
        [(string=? "complete" c) (...)]
  ))

;; Template rule used:
;; - one of: 3 cases
;; - atomic distinct:     false
;; - atomic non-distinct: Natural[1, 10]
;; - atomic distinct:     "complete"

;; FUNCTIONS:

;; CountDown -> Image
;; produce an image of current state of countdown.
(check-expect (countdown-to-image false)  (square 0 "solid" "white"))
(check-expect (countdown-to-image 3) (text (number->string 3) 24 "black"))
(check-expect (countdown-to-image "complete") (text "HAPPY NEW YEAR!" 24 "red"))

;(define (countdown-to-image c) (square 0 "solid" "white")) ;stub

;<used template from Countdown>

(define (countdown-to-image c)
  (cond [(false? c)(square 0 "solid" "white")]
        [(and (number? c) (<= c 10) (>= c 1)) (text (number->string c) 24 "black")]
        [(string=? "complete" c) (text "HAPPY NEW YEAR!" 24 "red")]
  ))



