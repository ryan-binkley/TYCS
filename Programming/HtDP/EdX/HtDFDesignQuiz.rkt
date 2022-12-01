;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HtDFDesignQuiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean
;; Consumes two images and produces true
;; if image1 is 'larger' than image2
(check-expect (largerimg? (rectangle 4 5 "solid" "red")
                          (rectangle 2 3 "solid" "red")) true)
(check-expect (largerimg? (rectangle 4 5 "solid" "red")
                          (rectangle 6 7 "solid" "red")) false)
(check-expect (largerimg? (rectangle 4 5 "solid" "red")
                          (rectangle 4 5 "solid" "red")) false)

;(define (largerimg? img1 img2) false)

;(define (largerimg? img1 img2)
  ;(... img1) (... img1) > (... img2) (... img2))

(define (largerimg? img1 img2)
  ( > (+ (image-width img1) (image-height img1))
      (+ (image-width img2) (image-height img2))))