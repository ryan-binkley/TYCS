;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |HtDF with Itemization|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; CountDown is one of:
;; - false
;; - Natural[1, 10]
;; - "complete"
;; Interp. false means countdown has not started
;; Interp. Natural means countdown is running and how many seconds left
;; Interp. "complete" means countdown is over
(define CD1 false)
(define CD2 10)
(define CD3 1)
(define CD4 "complete")
#;
(define (fn-for-countdown c)
  (cond [(false? c) (...)]
        [(number? c) (... c)]
        [else (...)]))

  ;; Template rules used:
  ;; One of: 3 cases
  ;; Atomic distinct: false
  ;; Atomic non distinct: Natural[1, 10]
  ;; Atomic distinct: "complete"

;; Functions:

;; Countdown -> Image
;; Produces image of current state of countdown
(check-expect (countdown-to-image false) (square 0 "solid" "white"))
(check-expect (countdown-to-image 5)
              (text (number->string 5) 24 "black"))
(check-expect (countdown-to-image "complete") (text "Happy New Year!" 24 "red"))

;(define (countdown-to-image c) (square 0 "solid" "white"))  ; stub

(define (countdown-to-image c)
  (cond [(false? c)
         (square 0 "solid" "white")]
        [(and (number? c) (<= 1 c) (<= c 10))
         (text (number->string c) 24 "black")]
        [else
         (text "Happy New Year!" 24 "red")]))