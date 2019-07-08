#lang sicp

;; Since scheme is applicative-order evaluation
;; This definition of (p) goes into infinite recursion as p keeps calling itself
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))
;; in case of normal-order evaluation the infinite loop won't occur
;; as (p) would never need to be evaluated due to the if condition