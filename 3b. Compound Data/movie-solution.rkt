;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname movie-solution) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(define-struct movie (name release-date))
;; Movie is (make-ball String String)
;; interp. a movie name and the date it is released.

(define M1 (make-movie "Deadpool and Wolverine" "July 26, 2024"))

#;
(define (fn-for-movie m)
  (... (movie-name m)           ;String
       (movie-release-date m))) ;String

;; Template rules used:
;; - compound: 2 fields