#lang racket
; Using function fold please define the following functions for lists. 
; a) (prod l)
(define (prod l)
  (foldl * 1 l))

;; Example:
(prod '(1 2 3 4 5)) ; 120

; b) (length l)
(define (length l)
    (foldl (lambda (x acc) (+ acc 1)) 0 l))

;; Example:
(length '(1 2 3))

; c) (delete x l)
(define (delete x l)
    (foldr (lambda (y acc) 
        (if (eq? y x) 
            acc 
            (cons y acc))
    ) '() l)
)
    
;; Example:
(delete 3 '(1 2 3 4 3 5))

; d) (reverse l)
(define (my-reverse l)
    (foldl (lambda (x acc) (cons x acc)) '() l))

;; Example:
(my-reverse '(1 2 3 4 5))

; e) (map f l)
(define (my-map f l)
    (my-reverse (foldl (lambda (x acc) (cons (f x) acc)) '() l)))

;; Example:
(my-map (lambda (x) (* x x)) '(1 2 3 4 5))

; f) (filter pred l)
(define (my-filter pred l)
    (my-reverse (foldl (lambda (x acc) (if (pred x) (cons x acc) acc)) '() l)))

;; Example:
(my-filter (lambda (x) (eq? (modulo x 2) 0)) '(1 2 3 4 5))

; g) (forall pred l). 
(define (forall pred l)
    (foldl (lambda (x acc) (and acc (pred x))) #t l))

;; Example:
(forall (lambda (x) (eq? (modulo x 2) 0)) '(2 2 2 4 6))