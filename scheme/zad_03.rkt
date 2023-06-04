#lang racket
; Please define functions (nwd a b) and (nww a b) whose values are the greatest common divisor and the least common multiple of (natural numbers) a and b. 

(define (nwd a b)
  (if (= b 0)
    a
    (nwd b (modulo a b))))

(nwd 30 12)

(define (nww a b)
  (/ (* a b) (nwd a b)))

(nww 4 6)