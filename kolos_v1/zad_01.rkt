#lang racket
; a) (append l m) - łaczy liste l do m
(define (my-append l m)
    (if (null? l)
        m
        (cons (car l) (my-append (cdr l) m))))

(define (my-append2 l m)
    (foldr cons m l))

(my-append '(1 2 3) '(4 5 6))
(my-append2 '(1 2 3) '(4 5 6))

; b) (delete x l) - usuwa wszystkie wystąpienia x w liście l
(define (my-delete x l)
    (if (null? l)
        '()
        (if (eq? x (car l))
            (my-delete x (cdr l))
            (cons (car l) (my-delete x (cdr l)))
        )
    )
)

(define (my-delete2 x l)
    (foldr (lambda (y acc) 
        (if (eq? y x)
            acc
            (cons y acc))
        ) '() l))

(my-delete 3 '(1 2 3 4 3 5))
(my-delete2 3 '(1 2 3 4 3 5))