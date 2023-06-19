#lang racket

(define (alternate x) (alternate (- x)))
(define (test x y z) (if (= x y) 0 z))

(if (= 1 1) 0 (alternate 3))
; Firstly, we enter if statement and 1 is always equal 1 so it returns 0. Alternate will never be called.

; (test 1 1 (alternate 3))
; Before calling test function, alternate function will be called with argument 3, which will be turned to -3 and alternate will be called with this value, and so on,
; which will cause Runtime error and it will never reach test function.