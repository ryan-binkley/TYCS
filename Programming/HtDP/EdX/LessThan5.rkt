;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname LessThan5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; String -> Boolean
;; Consume string, check if it's length < 5
(check-expect (lessthan5? "boop") true)
(check-expect (lessthan5? "gooses") false)
(check-expect (lessthan5? "hello") false)


;(define (lessthan5? inpString) false)

;(define (lessthan5? inpString) ... inpString)

(define (lessthan5? inpString) (< (string-length inpString) 5))