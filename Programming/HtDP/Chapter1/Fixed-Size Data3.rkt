;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Fixed-Size Data3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

(define WIDTH-OF-WORLD 400)
(define HEIGHT-OF-WORLD 80)
(define BACKGROUND (empty-scene WIDTH-OF-WORLD HEIGHT-OF-WORLD))
(define WHEEL-RADIUS 5)
(define WHEEL (circle WHEEL-RADIUS "solid" "black"))
(define SPACE (rectangle (* WHEEL-RADIUS 2) WHEEL-RADIUS "solid" "white"))
(define BOTH-WHEELS (beside WHEEL SPACE WHEEL))
(define CAR-BODY (overlay/offset (rectangle
                                 (* WHEEL-RADIUS 9)
                                 (* WHEEL-RADIUS 2.5) "solid" "red")
                                 0 -5
                          (rectangle (* WHEEL-RADIUS 4) (* WHEEL-RADIUS 3) "solid" "red")))
(define CAR (overlay/offset BOTH-WHEELS 0 -9 CAR-BODY))

; A WorldState is a Number.
; Interpretation: The number of pixels between
; the left border of the scene and the car

; Render
; WorldState -> Image
; Whenever needed, big-bang obtains the iamge of the
; current state of the world by evaluating (render cw)
(define (render cw) (place-image CAR cw 68 BACKGROUND))

; Clock-tick-handler
; WorldState -> WorldState
; For each tick of the clock, big-bang obtains the next
; state of the world from (clock-tick-handler cw)
(define (clock-tick-handler cw) (+ cw 3))

; end?
; WorldState -> Boolean
; After each event, big-bang evaluates (end? cw)
(define (end? cw)
  (if (> cw 420)
  #true
  #false))


; Main
; WorldState -> WorldState
; Launches the program from some initial state
(define (main ws)
  (big-bang ws
    [on-tick clock-tick-handler]
    [to-draw render]
    [stop-when end?]))