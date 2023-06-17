#lang racket

; a) (member x l) - value is #t if x appears in l, otherwise #f
(define (member x l)
    (if (null? l)
        #f
        (if (eq? x (car l))
            #t
            (member x (cdr l)))))

(member 3 '(1 2 3 4 5))
(member 3 '(1 2 7 4 5))

; b) (delete x l) - deletes all occurences of x in l
(define (delete x l)
    (foldr (lambda (y acc)
        (if (eq? x y)
            acc
            (cons y acc))
        ) '() l))

(delete 3 '(1 2 3 4 5))