(define (func1 n)
  (cond ((< n 3) n)
	(else (+ (func1 (- n 1)) (func1 (- n 2)) (func1 (- n 3))))))

(define (func2 n)
  (func2-iter 2 1 0 3 n))
	
(define (func2-iter product1 product2 product3 counter max-count)
  (if (< max-count 3)
      max-count
      (if (> counter max-count)
	  product1
	  (func2-iter (+ product1 product2 product3)
		      product1
		      product2
		      (+ counter 1)
		      max-count))))