(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(+ 4 5)

(if (= 4 0)
    5
    (inc (+ (dec 4) 5)))

    (inc (+ 3 5))

    (inc 8)

    9


(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

(+ 4 5)

(if (= 4 0)
    5
    (+ (dec 4) (inc 5)))

    (+ (3) (6))

    (+ 3 6)

    9