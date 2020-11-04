;;; The following function is the solution to Exercise 1 question 1
(define double
    (lambda (xs)
        (map (lambda (x) (* 2 x)) xs)))

;;; The following function is the solution to Exercise 1 question 2
(define list-subtract
    (lambda (xs ys)
        (map (lambda (x y) (- x y)) xs ys)))

;;; The following functions are the solution to Exercise 2
(define my-filter
    (lambda (xs p?)
        (if (null? xs)
            '()
            (if (p? (car xs))
                (cons (car xs) (my-filter (cdr xs) p?))
                (my-filter (cdr xs) p?)))))

(define my-even (lambda (xs)
    (my-filter xs even?)))

(define within-10-100 (lambda (xs)
    (my-filter xs (lambda (x) (<= 10 x 100)))))
    
;;; The following function is the solution to Exercise 3
(define euclidean-distance
    (lambda (xs)
        (sqrt (sum-list (map (lambda (x) (* x x)) xs)))))

(define sum-list
    (lambda (xs)
        (define aux
            (lambda (xs x)
                (if (null? xs)
                    x
                    (aux (cdr xs) (+ x (car xs))))))
        (aux xs 0)))

;;; The following function is the solution to Exercise 4 question 1
(define sort-abs-sin 
    (lambda (xs)
        (sort xs (lambda (x y) (< (abs (sin x)) (abs (sin y)))))))

;;; The following function is the solution to Exercise 4 question 2
(define sort-list-length
    (lambda (xs)
        (sort xs (lambda (x y) (> (length x) (length y))))))

;;; The following function is the solution to Exercise 5
(define euclidean-distance
    (lambda (xs)
        (sqrt (apply + 0 (map (lambda (x) (* x x)) xs)))))

;;; The following functions are the solution to Exercise 6
(define my-filter
    (lambda (xs p?)
        (if (null? xs)
            '()
            (if (p? (car xs))
                (cons (car xs) (my-filter (cdr xs) p?))
                (my-filter (cdr xs) p?)))))

;;; The following functions are the solution to Exercise 7
(define my-map
    (lambda (op . args)
        (if (null? (cdr args))
            (unary-op op (car args))
            (binary-op op (car args) (cadr args)))))

(define binary-op
    (lambda (op arg1 arg2)
        (if (null? arg1)
            '()
            (cons (op (car arg1) (car arg2)) (binary-op op (cdr arg1) (cdr arg2))))))

(define unary-op
    (lambda (op arg)
        (if (null? arg)
            '()
            (cons (op (car arg)) (unary-op op (cdr arg))))))