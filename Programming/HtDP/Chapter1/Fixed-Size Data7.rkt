;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Fixed-Size Data7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A Price falls into one of three categories
; - 0 up to 1,000 No tax
; - 1,000 up to 10,000 Taxed at 5.00%
; - 10,000 and above Taxed at 8.00%
; This enumeration would represent the price of an item.

; Price -> Number
; Computes the amount of tax charged for p(price)
(define (sales-tax p)
  (cond [(>= p 10000) (* 0.08 p)]
        [(and (>= p 1000) (< p 10000)) (* 0.05 p)]
        [else 0]))

; Tests for sales-tax
(check-expect (sales-tax 537) 0)
(check-expect (sales-tax 1000) (* 0.05 1000))
(check-expect (sales-tax 12017) (* 0.08 12017))
