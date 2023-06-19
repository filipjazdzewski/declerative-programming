#lang racket

;; a) (exchange x y l)
(define (exchange x y l)
  (foldr (lambda (z acc)
    (if (eq? z x)
      (cons y acc)
      (cons z acc))) '() l))

(exchange 2 9 '(1 2 3 4 2 5 6 7))

;; b) (drop-while p l)
(define (drop-while pred l)
  (if (null? l)
    l
    (if (pred (car l))
      (drop-while pred (cdr l))
      l)))

(drop-while even? '(4 6 7 8 10))