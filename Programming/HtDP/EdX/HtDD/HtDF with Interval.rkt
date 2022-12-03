;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |HtDF with Interval|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; SeatNum is Natural[1, 32]
;; Interpretation. Seat numbers in a row. 1 & 32 are aisle seats
(define SN1 1)    ;;Aisle
(define SN2 12)   ;;Middle
(define SN3 32)   ;;Aisle

#;
(define (fn-for-seatnum sn)
  (... sn))

;; Template rules used:
;; Atomic non-distinct ; Natural[1, 32]

;; Functions:

;; SeatNum -> Boolean
;; Produce true if given seat number is on the aisle
(check-expect (aisle? 1) true)
(check-expect (aisle? 16) false)
(check-expect (aisle? 32) true)

;(define (aisle? sn) false)  ;; stub

;<use template from SeatNum>
(define (aisle? sn)
  (or (= sn 1)
  (= sn 32)))