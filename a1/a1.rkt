#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(atom? 'a)
(atom? '())
(null? '(a))
(null? '())
(eq? 'a 'a)
(eq? 'a '(a))
(car '((a b c) x y z))
(cdr '(a b c))
(cons 'a '(b c))
