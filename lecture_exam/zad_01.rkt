#lang racket
;; a) (append l m)
(define (my-append l m)
  (if (null? l)
    m
    (cons (car l) (my-append (cdr l) m))))
    
(my-append '(1 2 3) '(4 5 6))

;; b) (nth n x l)
(define (nth n x l)
  (if (null? l)
    '()
    (if (eq? (- n 1) 0)
      (cons x (nth (- n 1) x (cdr l)))
      (cons (car l) (nth (- n 1) x (cdr l))))))

(nth 2 'z '(a b c))