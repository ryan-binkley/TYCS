;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |HtDF with Enumeration|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; LetterGrade is one of:
;; - "A"
;; - "B"
;; - "C"
;; Interp. The letter grade in a course
;; <Examples are redundant for enuemrations>

#;
(define (fn-for-letter-grade lg)
  (cond [(string=? lg "A") (...)]
        [(string=? lg "B") (...)]
        [(string=? lg "C") (...)]))

;; Templates rules used:
;; One of
;; Atomic distinct value

;; Functions:


;; LetterGrade -> LetterGrade
;; Produces next highest letter grade (no change for A)

(check-expect (bump-up "A") "A")
(check-expect (bump-up "B") "A")
(check-expect (bump-up "C") "B")

;(define (bump-up lg) "A") ;; Stub

(define (bump-up lg)
  (cond [(string=? lg "A") "A"]
        [(string=? lg "B") "A"]
        [(string=? lg "C") "B"]))