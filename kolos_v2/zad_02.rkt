#lang racket
; a) (divisors n) - zwraca listę wszystkich dzielników liczby naturalnej n
(define (divisors n)
    (define (divisors-helper x l acc)
        (if (= acc 0)
            l
            (if (= (remainder x acc) 0)
                (divisors-helper x (cons acc l) (- acc 1))
                (divisors-helper x l (- acc 1)))))
    (divisors-helper n '() n)
)

(divisors 12)

; b) (take-while pred l) - zbiera elementy od lewej, do momentu pierwszego niespielnienia predykatu pred
(define (take-while pred l)
    (if (null? l)
        '()
        (if (pred (car l))
            (cons (car l) (take-while pred (cdr l)))
            '())))

(take-while even? '(2 4 6 7 8 10))
(take-while (lambda (x) (> x 8)) '(10 12 9 7 10 3))
