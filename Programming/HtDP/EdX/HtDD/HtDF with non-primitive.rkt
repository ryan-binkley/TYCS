;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |HtDF with non-primitive|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Data Definitions

;; CityName is String
;; Interpret. the name of a city
(define CN1 "Boston")
(define CN2 "Vancouver")

#;
(define (fn-for-city-name cn)
  (... cn))
;; Templates rules used:
;; - Atomic non-distinct: String


;; Functions:

;; CityName -> Boolean
;; Produce true if the city is Hogsmeade
(check-expect (best? "Vancouver") false)
(check-expect (best? "Boston") false)
(check-expect (best? "Hogsmeade") true)

;(define (best? cn) false) ;stub

(define (best? cn)
  (string=? cn "Hogsmeade"))