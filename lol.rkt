#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(define lol?
  (lambda (l)
    (cond
      ((null? l)#f)
      ((atom? (car l))(lol?(cdr l))#f)
      (else #t)
      )))
(lol? '((a b) (c d)))
(lol? '(a (c d) (c)))
(lol? '(() (c)))
(lol? '(a b e))