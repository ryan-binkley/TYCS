;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HtDFPracticeQuestion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> String
;; Consumes a string and adds an 's' to the end of it
(check-expect (pluralize "person") "persons")
(check-expect (pluralize "window") "windows")

; (define (pluralize inpString) string)

; (define (pluralize inpString) (inpString ...))

(define (pluralize inpString) (string-append inpString "s"))