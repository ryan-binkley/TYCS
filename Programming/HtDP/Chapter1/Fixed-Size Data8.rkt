;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Fixed-Size Data8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

; Data Definitions

; A DoorState is one of:
; - LOCKED
; - CLOSED
; - OPEN

(define LOCKED "locked")
(define CLOSED "closed")
(define OPEN "open")

; Functions

; door-closer
; door-action
; door-render
; door-simulation


; door-closer
; DoorState -> DoorState
; Closes an open door over the period of one tick
(define (door-closer state-of-door)
  (cond
    [(string=? LOCKED state-of-door) LOCKED]
    [(string=? CLOSED state-of-door) CLOSED]
    [(string=? OPEN state-of-door) CLOSED]))
; Tests for door-closer
(check-expect (door-closer LOCKED) LOCKED)
(check-expect (door-closer CLOSED) CLOSED)
(check-expect (door-closer OPEN) CLOSED)

; door-action
; DoorState KeyEvent -> DoorState
; Turns key event k into an action on state s
(define (door-action state-of-door keyevent)
  (cond
    [(and (string=? LOCKED state-of-door)
          (string=? "u" keyevent)) CLOSED]
    [(and (string=? CLOSED state-of-door)
          (string=? "l" keyevent)) LOCKED]
    [(and (string=? CLOSED state-of-door)
          (string=? " " keyevent)) OPEN]
    [else state-of-door]))
; Tests for door-action
(check-expect (door-action LOCKED "u") CLOSED)
(check-expect (door-action CLOSED "l") LOCKED)
(check-expect (door-action CLOSED " ") OPEN)
(check-expect (door-action OPEN "a") OPEN)
(check-expect (door-action CLOSED "a") CLOSED)

; door-render
; DoorState -> Image
; Translates the state-of-door into a large text image
(define (door-render state-of-door)
  (text state-of-door 40 "red"))
; Tests for door-render
(check-expect (door-render CLOSED)
              (text CLOSED 40 "red"))

; door-simulation
; DoorState -> DoorState
; Simulates a door with an autmatic door closer
(define (door-simulation initial-state)
  (big-bang initial-state
    [on-tick door-closer 3]
    [on-key door-action]
    [on-draw door-render]))

(door-simulation LOCKED)