

(define (average x y)
  (/ (+ x y) 2))





(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (expt guess 2) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt 0.02)