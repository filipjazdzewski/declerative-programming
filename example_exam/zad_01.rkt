#lang racket
; a) Please define a function (delete x l), whose value is the list l without the first occurrence of x.
(define (delete x l)
    (if (null? l)
        l
        (if (= x (car l))
            (cdr l)
            (cons (car l) (delete x (cdr l))))))

(delete 3 '(1 2 3 4 5 3 6))

; b) Please define a function (count x l), whose value is the number of occurrences of x in list l.
(define (count x l)
    (if (null? l)
        0
        (if (= x (car l))
            (+ 1 (count x (cdr l)))
            (count x (cdr l)))))

(count 3 '(1 2 3 4 5 3 6 3 7 3 8))