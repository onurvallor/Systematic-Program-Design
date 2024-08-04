;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname student-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define-struct student (name allergies))
;; Student is (make-student String String)
;; interp. a student's name and their allergies.

(define S1 (make-student "James" "Peanuts"))

#;
(define (fn-for-student s)
  (... (student-name s)        ;String
       (student-allergies s))) ;String

;; Template rules used:
;; - compound: 2 fields