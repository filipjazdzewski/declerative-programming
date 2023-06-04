#lang racket
; a) Please define a function (factorial n) whose value is n! using recursion.

(define (factorial n)
  (if (= n 0)
    1
    (* n (factorial (- n 1)))))

(factorial 5)