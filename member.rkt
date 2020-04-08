#lang racket
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))
(define member?
  (lambda (a l)
    (cond
      ((null? l ) #f)
      ((eq? (car l) a) #t)
      ((not (atom? (car l)) )
       (cond
         ((member? a (car l))#t)   
         (else(member? a (cdr l)))
         ))
      (else(member? a (cdr l)))
      )))
(member? 'a '())
(member? 'b '((b) (c b)))
(member? 'a '(a a))