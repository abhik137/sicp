;; Lecture 19 | Programming Paradigms (Stanford)
;; https://www.youtube.com/watch?v=_cV8NWQCxnE&list=PL9D558D49CA734A02
#lang sicp
"Hello"
11.752
true
#t

(* (+ 4 4)
     (+ 5 5))

(and (> 4 3)
     (< 10 5))

;; list dissectors 'car' 'cdr'
;; car evaluates to 1st element of a list
;; cdr evaluates to rest of the list
(car '(1 2 3 4 5))
(cdr '(1 2 3 4 5))
(car (cdr (cdr '(1 2 3 4 5))))
(cdr '(4))
;; the quote ' is needed to supress evaluation as otherwise scheme would consider 
;; everything between the brackets () as an expression and hence 1st element as operator
;; ' is just a shorthand for (quote ...)
'(1 3 (4 (5)))
(quote (1 3 (4 (5))))
;; cons => construct
(cons 1 '(2 3 4 5))
;; cons takes 2 arguments and 2nd one has to be a list
;; this won't work => (cons '(2 3) 1 '(4 5))
(cons '(1 2 3) '(4 5))
;; lists in lisp/scheme can be heterogenous
(append '(1 2 3) '(4 5))
(append '(2 3) '(1) '(4 5))
(append '(2 3)
        (list 1) '(4 5))

(define (add x y)
  (+ x y))

(define (sum-of numlist)
  (if (null? numlist) 0
      (+ (car numlist)
         (sum-of (cdr numlist)))))

(sum-of '(1 2 3 4 5))
;;error => (sum-of '(1 2 3 4 (5)))