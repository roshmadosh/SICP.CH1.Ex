;1.6
(define (average a b) (/ (+ a b) 2))
(define (square s) (* s s))
(define (abs v) (if (< v 0) (- v) v))
(define (goodenough g x) (< (abs (- (square g) x)) .001))
(define (improve guess x) (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (goodenough guess x) guess
  (sqrt-iter (improve guess x) x)))
(define (sqrt r) (sqrt-iter 1.0 r))
