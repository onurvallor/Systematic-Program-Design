;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname bump-up) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; LetterGrade is one of:
;; - "A"
;; - "B"
;; - "C"
;; interp. the grade of a course.

;; <examples are redundant for enumerations.>

#;
(define (fn-for-lettergrade lg)
  (cond [(string=? "A") (...)]
        [(string=? "B") (...)]
        [(string=? "C") (...)]))

;; Template rule used:
;; - one of: 3 cases
;; - atomic distinct: "A"
;; - atomic distinct: "B"
;; - atomic distinct: "C"


;; FUNCTIONS:

;; LetterGrade -> LetterGrade
;; takes a letter grade makes it one letter grade higher (if A keep it at A).
(check-expect (bump-up "A") "A")
(check-expect (bump-up "B") "A")
(check-expect (bump-up "C") "B")

;(define (bump-up lg) "Z") ;stub

;; <template used from LetterGrade>

(define (bump-up lg)
  (cond [(string=? lg "A") "A"]
        [(string=? lg "B") "A"]
        [(string=? lg "C") "B"]))