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
(define BACKGROUND (add-line(add-line(empty-scene WIDTH HEIGHT)
                            0 CEILINGHEIGHT WIDTH
                            CEILINGHEIGHT "black")
                            0 FLOORHEIGHT WIDTH FLOORHEIGHT "black"))

; Data Definitions

; BallPosn Structure
; Contains the following fields:
; LastTouchedTop (boolean)
; Velocity
(define-struct ball [lastTouchedTop velocity])
(define bP (make-ball (#True 2)))

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
    [on-tick tick-handler]
    [on-draw render]))

; render
; World -> Image
(define (render w) (place-image BALL (/ WIDTH 2) w BACKGROUND))
; Tests
(check-expect (render 50)
              (place-image BALL (/ WIDTH 2) 50 BACKGROUND))
(check-expect (render 200)
              (place-image BALL (/ WIDTH 2) 200 BACKGROUND))
(check-expect (render 252)
              (place-image BALL (/ WIDTH 2) 252 BACKGROUND))

; tick-handler
; World -> World
(define (tick-handler w) (+ w 2))
; Tests
(check-expect (tick-handler 30) 32)
(check-expect (tick-handler 0) 2)
(check-expect (tick-handler 71) 73)