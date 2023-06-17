#lang racket
(define (height t)
    (if (eq? t '())
        0
        (+ 1 (max 
            (height (car (cdr t)))
            (height (car (cdr (cdr t))))
            )
        )
    )
)

(define drzewo '(2 (3 () (4 () ())) (1 () ())))

(height drzewo)

