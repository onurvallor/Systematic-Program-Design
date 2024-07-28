;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname rocket-descent) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;
; PROBLEM A:
;
; You are designing a program to track a rocket's journey as it descends
; 100 kilometers to Earth. You are only interested in the descent from
; 100 kilometers to touchdown. Once the rocket has landed it is done.
;
; Design a data definition to represent the rocket's remaining descent.
; Call it RocketDescent.
;

;; RocketDescent is one of:
;; - Number[1, 100]
;; - "landed"
;; interp. a rocket is descending to earth from 100km, when it is 0km it has landed.

(define RD1 100) ;start
(define RD2 50) ;middle
(define RD3 0) ;landed

#;
(define (fn-for-rocketdescent rd)
  (cond [(<= 1 rd 100) (... rd)]
        [else (...)]
  ))

;; Template rule used:
;; - one of: 2 cases
;; - atomic non-distinct: Number[0, 100]
;; - atomic distinct: "landed"

;; FUNCTIONS:

;; RocketDescent -> RocketDescent
;; Track a rocket descending to earth starting from 100km and landing at 0km.
(check-expect (rocket-descent 100) 100)
(check-expect (rocket-descent 50) 50)
(check-expect (rocket-descent 0) "landed")

;(define (rocket-descent rd) 0) ;stub

;<template used from RocketDescent>

(define (rocket-descent rd)
  (cond [(<= 1 rd 100) rd]
        [else "landed"]
  ))

