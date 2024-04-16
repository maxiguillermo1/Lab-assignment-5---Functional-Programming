#lang scheme

;; Define a function named log2 that takes one argument, n
(define (log2 n)
  ;; Define an inner helper function, log2-iter, which is tail-recursive.
  ;; It takes two arguments: n (the current value being processed)
  ;; and depth (the depth of recursion, i.e., the log base 2 result)
  (define (log2-iter n depth)
    ;; If n is less than or equal to 1, the base case is reached.
    ;; Return the depth, which now contains the log base 2 of the original n.
    (if (<= n 1)
        depth
        ;; Else, recursively call log2-iter with n divided by 2 and increment the depth by 1.
        ;; This is the tail call. Since it’s the last operation performed, the function is tail-recursive.
        (log2-iter (/ n 2) (+ 1 depth))))
  ;; Initiate the recursive process by calling log2-iter with the initial value of n and 0 as the initial depth value.
  (let ((result (log2-iter n 0)))
    (display "The log base 2 of the number is: ")
    (display result)  ;; Display the result to the user
    (newline)         ;; Print a newline for clean output
    result))          ;; Return the result as well

;; Call the function with an example number to see the output.
(log2 64)  ;; For example, calling log2 with the argument 64

﻿