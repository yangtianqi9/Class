#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(define lall?
  (lambda(a l)
    (cond
      ((null? l))
      ((eq? (car l) a)(lall? a (cdr l)))
      (else #f)
      )))
(lall? 'a '((a b) (c d)))
(lall? 'a '(a a))
(lall? 'b '(a a))
(lall? 1 '())
(lall? 'a '(a (b c)))