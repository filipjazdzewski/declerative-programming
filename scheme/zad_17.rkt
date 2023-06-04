#lang racket
;;; ; Creating a list
;;; (define my-list '(1 2 3 4 5))

;;; ; Getting the first element of the list
;;; (car my-list) ; Output: 1

;;; ; Getting the rest of the list
;;; (cdr my-list) ; Output: (2 3 4 5)

;;; ; Adding an element to the front of the list
;;; (cons 0 my-list) ; Output: (0 1 2 3 4 5)

;;; ; Checking if a list is empty
;;; (null? my-list) ; Output: #f
;;; (null? '()) ; Output: #t

;;; ; Checking the length of a list
;;; (length my-list) ; Output: 5

;;; ; Accessing an element of the list by index
;;; (list-ref my-list 2) ; Output: 3

;;; ; Removing the last element of the list
;;; (reverse (cdr (reverse my-list))) ; Output: (1 2 3 4)

;;; ; Appending two lists together
;;; (append '(1 2 3) '(4 5 6)) ; Output: (1 2 3 4 5 6)

(define test-list1 '(1 2 3))
(define test-list2 '(4 5 6))

; a) (append l m), whose value is the concatenation of the lists l i m.
(define (my-append lst1 lst2)
  (if (null? lst1)
      lst2
      (cons (car lst1) (my-append (cdr lst1) lst2))))

;; Example:
(my-append '() '(1 2))
(my-append test-list1 test-list2)

; b) (last l), whose value is the last element of the list l.
(define (my-last l)
  (if (null? (cdr l))
    (car l)
    (my-last (cdr l))))

;; Example:
(my-last '(1))
(my-last test-list1)

; c) (reverse l), whose value is the list l in reversed order.
(define (my-reverse l)
  (define (reverse-helper l acc)
    (if (null? l)
      acc
      (reverse-helper (cdr l) (cons (car l) acc))))
  (reverse-helper l '()))

;; Example:
(my-reverse '(1 2 3 4))

; d) (delete x l), whose value is the list l without the element x.
(define (my-delete x l)
    (cond 
      ((null? l) l)
      ((equal? x (car l)) (my-delete x (cdr l)))
      (else (cons (car l) (my-delete x (cdr l))))))
  
;; Example:
(my-delete 3 '(1 2 3 4 3 5))

; e) (pairing l1 l2), that builds a list of pairs out of the lists l1 and l2. Example:
;   > (pairing '(1 2 3) '(a b c))
;   '((1.a) (2.b) (3.c)) 

(define (my-pairing l1 l2)
  (cond 
    ((or (null? l1) (null? l2)) '())
    (else (cons (list (car l1) (car l2)) (my-pairing (cdr l1) (cdr l2))))))

;; Example:
(my-pairing test-list1 test-list2)

; f) (split x l), that splits l into two lists l1 and l2. l1 contains the element of l smaller than x and l2 the elements greater than x. 

(define (my-split x lst)
  (define (split-helper x lst l1 l2)
    (cond 
      ((null? lst) (list (reverse l1) (reverse l2)))
      ((< (car lst) x) (split-helper x (cdr lst) (cons (car lst) l1) l2))
      ((> (car lst) x) (split-helper x (cdr lst) l1 (cons (car lst) l2)))
      (else (split-helper x (cdr lst) l1 l2))))
  (split-helper x lst '() '()))

;; Example:
(my-split 3 '(1 2 3 4 5))