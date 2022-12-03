;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Interval) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; SeatNum is Natural[1, 32]
;; Interpretation. Seat numbers in a row. 1 & 32 are aisle seats
(define SN1 1)    ;;Aisle
(define SN2 12)   ;;Middle
(define SN3 32)   ;;Aisle

#;
(define (fn-for-seeatnum sn)
  (... sn))

;; Template rules used:
;; Atomic non-distinct ; Natural[1, 32]