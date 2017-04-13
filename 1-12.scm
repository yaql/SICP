(define (pascal-triang row position)
  (if (or (= position 1) (= position row) (= row 1))
      1
      (+ (pascal-triang (- row 1) position)
	 (pascal-triang (- row 1) (- position 1)))))