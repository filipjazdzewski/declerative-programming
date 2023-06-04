#lang racket
; Please define functions (new.< x y), (new.> x y), (new.= x y), (new.<= x y), (new.>= x y) oraz (new.<> x y). No built-in functions are allowed, except for < and boolean functions. 

(define (new.< x y)
  (< x y))
(new.< 6 5)

(define (new.> x y)
  (> x y))
(new.> 6 5)

(define (new.= x y)
  (and (not (new.< x y)) (not (new.> x y))))
(new.= 3 3)

(define (new.<= x y)
  (or (new.< x y) (new.= x y)))
(new.<= 6 7)

(define (new.>= x y)
  (or (new.> x y) (new.= x y)))
(new.>= 2 5)

(define (new.<> x y)
  (not (new.= x y)))
(new.<> 3 4)