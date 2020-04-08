#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(define lall?
  (lambda(a l)
    (cond
      ((null? l)#f)
      ((eq? (car l) a))
      ((not (atom? (car l)))#f)
      ((lall? a (cdr l) ))
      (else #f)
      )))
(lall? 'a '((a b) (c d)))
(lall? 'a '(a a))
(lall? 'b '(a a))
