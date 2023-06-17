#lang racket
(define (is-null? t) (eq? t '()))
(define (left t) (cadr t))
(define (right t) (caddr t))

(define (height t)
    (if (is-null? t)
        0
        (+ 1 (max 
            (height (left t))
            (height (right t))
            )
        )
    )
)

(define (preorder t)
    (if (is-null? t)
    '()
    (append
        (cons (element t)
            (preorder (left t)))
        (preorder (right t)))))

(define (element t) (car t))


(define drzewo '(2 (3 () (4 () ())) (1 () ())))

(height drzewo)


; (preorder drzewo)

