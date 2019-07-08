#lang sicp

;; the 'if' is a compound expression which acts as an operator (footnote 10)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;; since procedures and data are interchangeable in list, + is a procedure
;; returned in a similar way that data will be returned in
(a-plus-abs-b 2 -3)
