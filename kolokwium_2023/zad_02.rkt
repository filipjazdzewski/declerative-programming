#lang racket
; a) (twice l) - (twice '(1 2 3)) => '(1 1 2 2 3 3)
(define (twice l)
    (foldr (lambda (x acc)
        (cons x (cons x acc))
    ) '() l))

(twice '(1 2 3))

; b) (sum f r)
(define (sum f r)
    (if (eq? r 0)
        (f r)
        (+ (f r) (sum f (- r 1)))))

(sum (lambda (x) (+ x 2)) 3)