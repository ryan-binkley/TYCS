;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Boxify) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define BOX (rectangle 5 6 "solid" "red"))

;; Image -> Image
;; Given an image, output same image with a box around it
(check-expect (boxify (rectangle 5 6 "solid" "red"))
              (overlay (rectangle (+ (image-width BOX) 3)
                                  (+ (image-height BOX) 3)
                                  "outline" "black")
                       BOX))

;(define (boxify img) image)

;(define (boxify img) ... image)

(define (boxify img) (overlay (rectangle (+ (image-width img) 3)
                                  (+ (image-height img) 3)
                                  "outline" "black")
                              img))