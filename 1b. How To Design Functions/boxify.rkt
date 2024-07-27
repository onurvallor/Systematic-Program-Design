;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname boxify) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image -> Image
;; Take an image and but a rectangle box around it.
(check-expect (boxify (rectangle 2 3 "solid" "red"))
              (overlay (rectangle 2 3 "solid" "red")
                     (rectangle 3 4 "outline" "black")))

(check-expect (boxify (rectangle 4 4 "solid" "red"))
              (overlay (rectangle 4 4 "solid" "red")
                     (rectangle 5 5 "outline" "black")))


;(define (boxify img) img) ;stub

;(define (boxify img) ;template
;  (... img))

(define (boxify img)
  (overlay img (rectangle (+ (image-width img) 1) (+ (image-height img) 1) "outline" "black")))