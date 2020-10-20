;;; The following function is the solution to Exercise 1 question 1
(define absolute
    (lambda (x)
        (if (< x 0)
            (- x)
            x)))

;;; The following function is the solution to Exercise 1 question 2
(define reciprocal
    (lambda (x)
        (if (real? x)
            (/ 1 x)
            #f)))

;;; The following function is the solution to Exercise 1 question 3
(define int-to-graphchar
    (lambda (x)
        (and (>= x 33) 
             (<= x 126) 
        (integer->char x))))

;;; The following function is the solution to Exercise 2 question 1
(define prod-if-all-pos
    (lambda (x y z)
        (and (positive? x) 
             (positive? y) 
             (positive? z)
        (* x y z))))

;;; The following function is the solution to Exercise 2 question 2
(define prod-if-some-neg
    (lambda (x y z)
        (if (or (negative? x) 
                (negative? y) 
                (negative? z))
            (* x y z)
            #f)))

;;; The following function is the solution to Exercise 3
(define grade
    (lambda (score)
        (cond
            ((>= score 80) 'A)
            ((>= score 60) 'B)
            ((>= score 40) 'C)
            (else 'D))))