#lang racket
; b) The factorial function can also be defined the following way:

;   (define (factorial_help n i acc)
;       (if (< n i)
;           acc
;           (factorial_help n (+ i 1) (* i acc))))

;    (define (factorial n)
;       (factorial_help n 1 1))

; Please show how the expression (factorial 4) is evaluated, once for the recursive version a) and again for version b).
; Note: The argument acc is called accumulator and one says that this version defines the faculty function using accumulation. 

(define (factorial_help n i acc)
  (if (< n i)
    acc
    (factorial_help n (+ i 1) (* i acc))))

(define (factorial n)
  (factorial_help n 1 1))

(factorial 4)

; First, let's evaluate the expression (factorial 4) using the recursive version:

; (factorial 4)
; (* 4 (factorial 3))
; (* 4 (* 3 (factorial 2)))
; (* 4 (* 3 (* 2 (factorial 1))))
; (* 4 (* 3 (* 2 (* 1 (factorial 0)))))
; (* 4 (* 3 (* 2 (* 1 1))))
; (* 4 (* 3 (* 2 1)))
; (* 4 (* 3 2))
; (* 4 6)
; 24

; As we can see, the recursive version works by repeatedly calling factorial with decreasing values of n, until n reaches zero and the recursion stops.

; Now let's evaluate the expression (factorial 4) using the accumulation version:

; (factorial 4)
; (factorial_help 4 1 1)
; (factorial_help 4 2 1)
; (factorial_help 4 3 2)
; (factorial_help 4 4 6)
; 24

; In this version, we define a helper function factorial_help that takes three arguments: n, i, and acc. n is the original number whose factorial we want to calculate, i is the current value of the index (starting from 1), and acc is the current value of the accumulator (starting from 1).

; The function factorial_help works by repeatedly calling itself with increasing values of i and updated values of acc, until i reaches n, at which point it returns the final value of acc.

; So in the case of (factorial 4), factorial_help is called four times, with the following values of i and acc:


; (factorial_help 4 1 1)
; (factorial_help 4 2 1)
; (factorial_help 4 3 2)
; (factorial_help 4 4 6)

; The final value of acc is 6, which is the factorial of 4, so (factorial 4) returns 24.

; Both versions give the same result, but they use different approaches to achieve it. The recursive version uses repeated function calls with decreasing values of n, while the accumulation version uses a loop-like structure with increasing values of an accumulator variable.