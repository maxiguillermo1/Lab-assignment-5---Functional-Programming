#lang scheme

(define (reverse lst)
  ;; Check if the list is empty. If it is, return the empty list.
  ;; This serves as the base case for our recursion.
  (if (null? lst)
      '()
      ;; If the list is not empty, recursively call `reverse` on the cdr of the list (the sublist excluding the first element).
      ;; Then append the result of that recursive call to a list containing just the first element (car lst).
      ;; This step effectively puts the first element at the end of the reversed sublist.
      (append (reverse (cdr lst)) (list (car lst)))))

;; The `display` function is used to show the reversed list in the console.
;; The `reverse` function is called with the list `(A B C D E F G)` and the result is displayed.
(display (reverse '(A B C D E F G)))