(define (pascal-triang lst)
  (let loop ((lst lst) (accum '()) (prev 0))
    (cond
      ((empty? lst) (reverse (cons 1 accum)))
      (else (loop (cdr lst) (cons (+ (car lst) prev) accum) (car lst))))))
