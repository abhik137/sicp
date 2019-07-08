#lang sicp

(define (square-sum a b c)
  (cond ((and (> a c) (> b c)) (sum-of-squares a b))
        ((and (> b a) (> c a)) (sum-of-squares b c))
        ((and (> a b) (> c b)) (sum-of-squares a c))))

(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(square-sum 1 2 3)
(square-sum 3 2 1)
(square-sum 1 3 2)
(square-sum 3 1 2)
(square-sum 2 1 3)
(square-sum 2 3 1)