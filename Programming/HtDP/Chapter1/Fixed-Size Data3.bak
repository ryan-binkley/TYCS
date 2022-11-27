;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Fixed-Size Data3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

(define WIDTH-OF-WORLD 200)
(define HEIGHT-OF-WORLD 80)
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))
(define WHEEL (circle WHEEL-RADIUS "solid" "black"))
(define SPACE (rectangle (* WHEEL-RADIUS 2) WHEEL-RADIUS "solid" "white"))
(define BOTH-WHEELS (beside WHEEL SPACE WHEEL))
(define CAR-BODY (overlay/offset (rectangle (* WHEEL-RADIUS 5) (* WHEEL-RADIUS 2) "solid" "red")
                                 0 -5
                          (rectangle (* WHEEL-RADIUS 2) (* WHEEL-RADIUS 2) "solid" "red")))
(define CAR (overlay/offset BOTH-WHEELS 0 -6 CAR-BODY))
