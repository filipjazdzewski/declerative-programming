#lang racket
; a) Please define functions (fibonacci n) whose value is the n-th element of the Fibonacci sequence, one using recursion and again using accumulation. 

;;; Normal recursive version

; (define (fibonacci n)
;   (cond ((= n 0) 0)
;         ((= n 1) 1)
;         (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(define (fibonacci n)
  (if (or (= n 0) (= n 1))
    n
    (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

;;; Acc version

(define (fibonacci2 n)
  (define (fibonacci_helper i prev curr)
    (if (> i n)
      prev
      (fibonacci_helper (+ i 1) curr (+ prev curr))))
  (fibonacci_helper 1 0 1))
  

(fibonacci 6)
(fibonacci2 6)