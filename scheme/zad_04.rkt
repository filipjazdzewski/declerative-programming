#lang racket
; Please define functions (odd? n) and (even? n) checking whether a natural number n is odd or even, resp. No built-in functions are allowed, except for #t, #f, zero? and a function "-1" calculating n-1. 

(define (odd?? n)
  (if (zero? n)
    #f
    (even?? (- n 1))))

(define (even?? n)
  (if (zero? n)
    #t
    (odd?? (- n 1))))

(even?? 3)