#lang racket

;; a) (length l)
(define (length1 l)
  (if (null? l)
    0
    (+ 1 (length (cdr l)))))

(define (length2 l)
  (foldl (lambda (x acc) (+ acc 1)) 0 l))

(length1 '(1 2 3 4 5))
(length2 '(1 2 3 4 5))

;; b) (reverse l)
(define (reverse1 l)
  (define (reverse-helper l acc)
    (if (null? l)
      acc
      (reverse-helper (cdr l) (cons (car l) acc)))
  )
  (reverse-helper l '())
)

(define (reverse2 l)
  (foldl (lambda (x acc) (cons x acc)) '() l))

(reverse1 '(1 2 3 4 5))
(reverse2 '(1 2 3 4 5))