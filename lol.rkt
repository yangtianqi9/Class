#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(define lol?
  (lambda (l)
    (cond
      ((null? l)#t)
      ((atom? (car l))#f)
      ((not (atom? (car l)))(lol? (cdr l)))
      )))
(lol? '((a b) (c d)))
(lol? '(a (c d) (c)))
(lol? '(() (c)))
(lol? '(a b e))
(lol? '((a) b b))
