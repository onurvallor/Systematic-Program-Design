;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname pluralize) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Problem: Design a function that pluralizes a given word.
;;(Pluralize means to convert the word to its plural form.)
;; For simplicity you may assume that just adding s is enough to pluralize a word.

;; String -> String
;; Takes a string and adds an s at the end to make it plural.

(check-expect (pluralize "banana") "bananas")
(check-expect (pluralize "123") "123s")

;(define (pluralize str) "apples") ;this is a stub

;(define (pluralize str) ;this is a template/inventory
;  (... str))

(define (pluralize str)
  (string-append str "s"))