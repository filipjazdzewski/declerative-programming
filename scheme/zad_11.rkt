#lang racket
; Please define a function (accumulate combiner null-value term a next b)generalizing functions sum i product: The arguments term, next, a, and b are the same as in the definitions of sum i prod.
; combiner is a two-argument function describing, how (term a) is tied together with the recursive result. null-value is the initial value used in the basic step of recursion.
; Please also show, how sum i product can be defined using accumulate. 

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(accumulate (lambda (x y) (+ x y)) 0 (lambda (x) x) 1 (lambda (x) (+ x 1)) 5)

(define (silnia n)
  (accumulate (lambda (x y) (* x y)) ; mogę dać (lambda (x y) (* x y)), albo samo *, ale jako że w poleceniu jest, że combiner to funkcja to daje tak
              1
              (lambda (x) x)
              1
              (lambda (x) (+ x 1))
              n))

(silnia 4)