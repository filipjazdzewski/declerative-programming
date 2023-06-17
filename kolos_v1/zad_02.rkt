#lang racket
; a) (exchange x y l) - gdzie wszystkie wystąpienia x w liście l zostały zamienione na y

(define (exchange x y l)
    (foldr (lambda (z acc)
        (if (eq? z x)
            (cons y acc)
            (cons z acc))
        ) '() l))

(exchange 2 9 '(1 2 3 2 5))

; b) (drop-while p l) - która eliminuje elementy listy l (zaczynając od lewej strony) aż do momentu pierwszego niespełnienia predykatu p
(define (drop-while pred l)
    (if (pred (car l))
        (drop-while pred (cdr l))
        l
    )
)

(drop-while even? '(2 4 6 7 8 10))