#lang scheme
;; Define the main rotation function that takes a list as an argument.
(define (rotate lst)
  ;; Define a helper function that will carry out the rotations.
  ;; It takes the current list (lst) to rotate and a counter (count) to track the number of rotations done.
  (define (rotate-helper lst count)
    ;; Check if the count equals the length of the list. This is our base case,
    ;; signifying that all possible rotations have been done since a list of n elements has n rotations.
    (if (= count (length lst))
        '()  ; Return an empty list, signifying no more rotations need to be added.
        ;; Otherwise, construct the list of rotations by:
        ;; 1. cons-ing the current list (lst) to the front of the list of rotations we are accumulating.
        ;; 2. Calling rotate-helper recursively to compute the next rotation.
        (cons lst  ; Add the current list (lst) as the latest rotation to the accumulator.
              (rotate-helper (append (cdr lst)  ; Create a new list that is the original list without the first element...
                                     (list (car lst)))  ; ...plus the first element of the original list appended to the end.
                              (+ count 1)))))  ; Increment the count because we have completed another rotation.
  ;; Begin the rotation process by calling rotate-helper with the original list (lst) and an initial count of 0.
  (rotate-helper lst 0))

;; Example usage of the rotate function
;; This call should produce a list containing all rotations of the input list: '(a b c d e)
(rotate '(a b c d e))  ; 