#lang racket

;; a) (exists pred l)
(define (exists-no-fold pred l)
  (if (null? l)
    #f
    (if (pred (car l))
      #t
      (exists-no-fold pred (cdr l)))))

(define (exists-fold pred l)
  (foldl (lambda (x acc)
    (if (pred x)
      #t
      acc)) #f l))

(exists-no-fold even? '(4 3 5 6))
(exists-fold even? '(4 3 5 6))
(exists-fold (lambda (x) (< x 3)) '(4 3 5 6))

;; b) (sum g a)
(define (sum g a)
  (if (eq? a 0)
    (g a)
    (+ (g a) (sum g (- a 1)))))

(sum (lambda (x) (* x x)) 4)
(sum (lambda (x) (+ x 2)) 3)