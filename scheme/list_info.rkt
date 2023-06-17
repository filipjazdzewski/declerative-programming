;;; ; Creating a list
;;; (define my-list '(1 2 3 4 5))

;;; ; Getting the first element of the list
;;; (car my-list) ; Output: 1

;;; ; Getting the second element of the list (Basically (car (cdr my-list)))
;;; (cadr my-list) ; Output: 2

;;; ; Getting the third element of the list
;;; (caddr my-list) ; Output: 3

;;; ; Getting the list without first element
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