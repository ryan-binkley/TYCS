(define (functionofn n)
  (if (< n 3) 
      n
      (+ (functionofn (- n 1)) 
         (* 2 (functionofn (- n 2))) 
         (* 3 (functionofn (- n 3))))))

(define (fofn n)
  (define (fofn-iter n-1 n-2 n-3 nth)
    (if (= n nth)
        n-1
        (fofn-iter (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (+ 1 nth))))
  (if (< n 3)
      n
      (fofn-iter 2 1 0 2)))