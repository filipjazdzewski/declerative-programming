#lang racket
; Please define a function (product term next a b) analogous to function sum.
; Please show, how the function product can be used to define both function silnia and for the approximation of p using the formula   p/4 = 2 · 4 · 4 · 6 · 6 · 8 ··· / 3 · 3 · 5 · 5 · 7 · 7 ··· . 

(define (product term next a b)
  (if (> a b)
      1
      (* (term a) (product term next (next a) b))))


(define (silnia n)
  (product (lambda (x) x)
           (lambda (x) (+ x 1))
           1
           n))

(silnia 4)
