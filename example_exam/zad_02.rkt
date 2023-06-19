#lang racket

;; a) Please define a function (filter pred l) for a one-argument predicate pred,
;; whose value is the list containing all element of the list l fulfilling pred.

(define (my-filter pred l)
  (if (null? l)
    '()
    (if (pred (car l))
      (cons (car l) (my-filter pred (cdr l)))
      (my-filter pred (cdr l)))))

(my-filter even? '(1 2 3 4 5 6 7 8 9))

;; b)  Suppose binary trees are represented as lists
;;                  (element left-subtree right-subtree)
;; The empty tree is represented by the empty list. Please define a function
;; inorder t for a binary tree in the above representation, whose value is the
;; list of elements of t in inorder. Example:
;; > (inorder ’(4
;;             (3 () ())
;;             (2 (9 () ()) (7 () ()))))
;; ’(3 4 9 2 7)

(define (root tree)
  (car tree))

(define (left tree)
  (cadr tree))

(define (right tree)
  (caddr tree))

(define (inorder tree)
  (if (null? tree)
    '()
    (append (inorder (left tree)) (list (root tree)) (inorder (right tree)))))

(define drzewo '(4 (3 () ()) (2 (9 () ()) (7 () ()))))

(inorder drzewo)

(cadddr '(1 2 3 4 5 6))
