;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Fixed-Size Data9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

; Constants
(define HEIGHT 300)
(define WIDTH 100)
(define CEILINGHEIGHT (/ HEIGHT 10))
(define FLOORHEIGHT (* HEIGHT 0.9))
(define BALLRADIUS 15)
(define BALL (circle BALLRADIUS "solid" "red"))
(define BACKGROUND (empty-scene WIDTH HEIGHT))

; Data Definitions

; World (w)
; World here is a number and will also
; be the center of the balls position
; A world is:
; A integer



; Functions

; main
; World -> World
(define (main w)
  (big-bang w
    []))

; render
; World -> Image
(define (render w) image)

; tick-handler
; World -> World
(define (tick-handler w) w)