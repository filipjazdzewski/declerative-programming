#lang racket
; Even function accumulate can be generalized: Please define a function filter-accumulate with an additional argument pred.
; pred is a one-argument predicate and filter-accumulate ties (term a) to the result only if a fulfills pred.
; Using filter-accumulate please compute the sum of squares of the prime numbers in the interval [a,b] and the product of the natural numbers i smaller than n for which nwd(i,n) = 1.

(define (filter-accumulate combiner null-value term a next b pred)
  (if (> a b)
    null-value
    (if (pred a b)
      (combiner (term a) (filter-accumulate combiner null-value term (next a) next b pred))
      (filter-accumulate combiner null-value term (next a) next b pred))))

(define (prime? n)
  (cond ((<= n 1) #f)
    ((= n 2) #t)
    ((even? n) #f)
    (else (let loop ((i 3))
      (cond ((> (* i i) n) #t)
        ((zero? (modulo n i)) #f)
        (else (loop (+ i 2))))))))

(filter-accumulate + 0 (lambda (x) x) 1 (lambda (x) (+ x 1)) 5 (lambda (x y) (prime? x)))

(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (modulo a b))))


(define (coprime? a b)
  (= (gcd a b) 1))

(filter-accumulate * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) 5 (lambda (x y) (coprime? x y)))
