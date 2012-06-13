;;this is for the practice 1.11 from SICP
(define (f n) 
  (define (f-iter a b c) 
    (cond
      ((= n 2) (if (> a n) a 2))
      ((< n 2) n)
      (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1)))
    )
  )

  (f-iter 2 1 0 n)
)

;; test
(display (= (f 0) 0))
(display (= (f -1) -1))
(display (= (f 1) 1))
(display (= (f 2) 2))
(display (= (f 3) 4))
(display (= (f 4) 11))

