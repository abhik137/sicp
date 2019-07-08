#lang sicp
(/ 10 2.5)
(/ 10 2.4)
(/ 10 7)
(/ 10 7.0)
(/ 100 10 2)
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
;; simpler form
(+ (* 3 
      (+ (* 2 4) 
         (+ 3 5))) 
   (+ (- 10 7) 
      6))
;; define variables, 'define' is used to name 'things'
(define size 2)
size
(+ size 2)
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))

(define circumference (* 2 pi radius))
circumference

;; defining procedures
(define (square x)
  (* x x))
;; evaluating this defn creates the procedure and associates it with
;; the name 'square'. it is possible to separate this creation and association (sec 1.3.2)
(square 10)
(square (* 2 3))
(square (square 3))
;; define x^2 + y^2
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4)
;; define another function that uses sum-of-squares
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(f 5)

