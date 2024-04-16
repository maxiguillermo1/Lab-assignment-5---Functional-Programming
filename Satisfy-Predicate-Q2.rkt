#lang scheme
;; Define a function named 'filter' that takes a predicate function and a list
(define (filter pred lst)
  ;; Define a helper function that takes two arguments: the list and an accumulator for the result
  (define (filter-acc pred lst depth)
    (cond ((null? lst)            ;; If the list is empty, return the accumulated list
           (reverse depth))
          ((pred (car lst))       ;; If the predicate is true for the first element,
           (filter-acc pred       ;; Recursively call with the rest of the list
                      
                        ;; If the predicate is true for the first element, recursively call filter-acc 
                        ;; with the rest of the list (cdr lst) and add the first element to the accumulator (cons (car lst) acc).
 
                        (cdr lst) ;; Retrieves the "rest" of the list lst, that is, all the elements except for the first one.
                        (cons (car lst) depth)))
          (else                   ;; If the predicate is false, 
           (filter-acc pred       ;; Recursively call with the rest of the list
                        (cdr lst) ;; without adding the element to the accumulator
                        depth))))
  ;; Call the helper function with the initial list and an empty list as the accumulator
  (filter-acc pred lst '()))

;; Example usage of the filter function
(filter (lambda (x) (< x 5)) '(3 9 5 8 2 4 7))