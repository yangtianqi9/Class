#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(define lat?
  (lambda (l)
    (cond
      ((null? l)#t)
      ((atom? (car l))(lat?(cdr l)))
      (else #f)
      )))
(lat? '(a))
(lat? '(a b c d))
(lat? '(a (b)))
(lat? '(bacon (and eggs)))
