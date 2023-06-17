#lang racket
; Suppose the following definitions are given.

(define a 2)
(define (p a)
  (define (pp b)
    (set! a (+ b 1))
    (* a b))
  (pp 2))

; What is the value of the expression (p 5)? What is the value of a after evaluating (p 5)? Justify Your answers using the environment model.
; => (p 5)
; => (pp 2) ; a = 5
; => (set! a (+ b 1)) ; b = 2, a = 3
; => 
; => 