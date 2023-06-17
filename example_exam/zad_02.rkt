#lang racket
; a) Please define a function (filter pred l) for a one-argument predicate pred,
; whose value is the list containing all element of the list l fulfilling pred.

(define (filter pred l)
    (if (null? l) 
        l 
        (if (pred (car l)) 
            (cons (car l) (filter pred (cdr l))) 
            (filter pred (cdr l))
        )
    )
)

(filter list? '(1 2 (3 4) 5 (6)))
(filter (lambda (x) (= (modulo x 2) 0)) '(1 2 3 4 5 6)) ; basically even?

; b) Suppose binary trees are represented as lists
; (element left-subtree right-subtree)
; The empty tree is represented by the empty list. Please define a function
; inorder t for a binary tree in the above representation, whose value is the
; list of elements of t in inorder. Example:
; > (inorder ’(4
; (3 () ())
; (2 (9 () ()) (7 () ()))))
; ’(3 4 9 2 7)

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

(define (preorder tree)
    (if (null? tree)
        '()
        (append (list (root tree)) (inorder (left tree)) (inorder (right tree)))))

(define (postorder tree)
    (if (null? tree)
        '()
        (append (inorder (left tree)) (inorder (right tree)) (list (root tree)))))

(define drzewo '(4 (3 () ()) (2 (9 () ()) (7 () ()))))

(inorder drzewo)
(preorder drzewo)
(postorder drzewo)
