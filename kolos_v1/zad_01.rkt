#lang racket

;; a) (my-append l m)
(define (my-append l m)
  (if (null? l)
    m
    (cons (car l) (my-append (cdr l) m))))

(define (my-append2 l m)
    (foldr cons m l))

(my-append '(1 2 3) '(4 5 6))
(my-append2 '(1 2 3) '(4 5 6))

;; b) delete mam juz w innym