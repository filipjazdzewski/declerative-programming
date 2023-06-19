#lang racket

;; a) Please define a function (delete x l), whose value is the list l without the first occurrence of x.
(define (delete x l)
  (if (null? l)
    '()
    (if (eq? x (car l))
      (cdr l)
      (cons (car l) (delete x (cdr l))))))

(delete 3 '(1 2 3 4 5 3 6 7))

;; b) Please define a function (count x l), whose value is the number of occurrences of x in list l.
(define (count x l)
  (foldl (lambda (y acc)
    (if (eq? x y)
      (+ acc 1)
      acc)) 0 l))

(count 2 '(1 2 3 4 3 5 2 6 3 2 4 5))

