;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Fixed-Size Data Key Handler Sample Problem|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

(define HEIGHT 200)
(define WIDTH 500)
(define BACKGROUND (empty-scene WIDTH HEIGHT))

; WorldState here is a NUMBER

; Main
; WorldState -> WorldState
; Takes in an initial state and facilitates the events/handlers
; of every following state
(define (main sw)
  (big-bang sw
    [on-key key-handler]
    [to-draw render]))

; Render
; WorldState -> Image
; Takes in a WorldState, places the circle & it's position
; based on the current WorldState
(define (render cw) (place-image
                     (circle 20 "solid" "red") cw 180 BACKGROUND))

; Key-handler
; WorldState String -> WorldState Boolean
; Gets called if 'left' or 'right' is pressed, changes boolean
; to true and modifies the current WorldState
(define (key-handler cw inpString) (cond
                                     [(string=? "left" inpString)
                                      (- cw 10)]
                                     [(string=? "right" inpString)
                                      (+ cw 10)]
                                     [else cw]))

(main 250)