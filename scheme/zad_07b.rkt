#lang racket
; Recursive version:

; (fibonacci 3)
; (+ (fibonacci 2) (fibonacci 1))
; (+ (+ (fibonacci 1) (fibonacci 0)) 1)
; (+ (+ 1 0) 1)
; 2

; Accumulation version:

; (fibonacci2 3)
; (fibonacci_helper 1 0 1)
; (fibonacci_helper 2 1 1)
; (fibonacci_helper 3 1 2)
; 2

; As you can see, both versions produce the same result for n=3, which is 2.