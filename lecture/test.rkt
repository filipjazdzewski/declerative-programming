#lang racket

(define m 4)
(define (p x)
    (define (q x)
        (set! m (* x m))
        (+ m x))
    (q 2))

(p 3)
(display m)
