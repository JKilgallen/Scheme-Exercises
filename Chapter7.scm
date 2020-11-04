;;; The following function is the solution to Exercise 1 question 1
(define my-length
    (lambda (xs)
        (if (null? xs)
            0
            (+ 1 (my-length (cdr xs))))))

;;; The following function is the solution to Exercise 1 question 2
(define my-sum
    (lambda (xs)
        (if (null? xs)
            0
            (+ (car xs) (my-sum (cdr xs))))))

;;; The following function is the solution to Exercise 1 question 3
(define remove
    (lambda (xs x)
        (if (null? xs)
            '()
            (if (equal? (car xs) x)
                (remove (cdr xs) x)
                (cons (car xs) (remove (cdr xs) x))))))

;;; The following function is the solution to Exercise 1 question 4
(define find-first
    (lambda (xs x)
        (define aux
            (lambda (xs x i)
                (if (null? xs)
                    #f
                    (if (equal? (car xs) x)
                        i
                        (aux (cdr xs) x (+ i 1))))))
        (aux xs x 0)))

;;; The following function is the solution to Exercise 2 question 1
(define tc-reverse
    (lambda (xs)
        (define aux
            (lambda (xs sx)
                (if (null? xs)
                    sx
                    (aux (cdr xs) (cons (car xs) sx)))))
        (aux xs '())))

;;; The following function is the solution to Exercise 2 question 2
(define tc-sum
    (lambda (xs)
        (define aux
            (lambda (xs x)
                (if (null? xs)
                    x
                    (aux (cdr xs) (+ x (car xs))))))
        (aux xs 0)))

;;; The following function is the solution to Exercise 2 question 3
(define tc-string->integer
    (lambda (str)
        (define aux
            (lambda (xs x)
                (if (null? xs)
                    x
                    (aux (cdr xs) (+ (* x 10) (- (char->integer (car xs)) 48))))))
            (aux (string->list str) 0)))

;;; The following functions are the solution to Exercise 3 question 1
(define remove-let
    (lambda (xs x)
        (let loop((xs1 xs))
            (if (null? xs1)
                '()
                (if (equal? (car xs1) x)
                    (loop (cdr xs1))
                    (cons (car xs1) (loop (cdr xs1))))))))

(define find-first-let
    (lambda (xs x)
        (let loop((xs1 xs) (i 0))
            (if (null? xs1)
                #f
                (if (equal? (car xs1) x)
                    i
                    (loop (cdr xs1) (+ i 1)))))))

;;; The following functions are the solution to Exercise 3 question 2
(define reverse-let
    (lambda (xs)
        (let loop((xs1 xs) (sx '()))
            (if (null? xs1)
                sx
                (loop (cdr xs1) (cons (car xs1) sx))))))

(define sum-let
    (lambda (xs)
        (let loop((xs1 xs) (x 0))
            (if (null? xs1)
                x
                (loop (cdr xs1) (+ x (car xs1)))))))

(define string->integer-let
    (lambda (str)
        (let loop((xs (string->list str)) (x 0))
            (if (null? xs)
                x
                (loop (cdr xs) (+ (* 10 x) (- (char->integer (car xs)) 48)))))))

;;; The following function is the solution to Exercise 3 question 3
(define range-let
    (lambda (n)
        (let loop((i 0))
            (if (= i n)
                '()
                (cons i (loop (+ i 1)))))))

;;; The following functions are the solution to Exercise 4
(define reverse-letrec
    (lambda (xs)
        (letrec ((iter (lambda (xs1 sx)
            (if (null? xs1)
                sx
                (iter (cdr xs1) (cons (car xs1) sx))))))
    (iter xs '()))))

(define sum-letrec
    (lambda (xs)
        (letrec ((iter (lambda (xs1 x)
            (if (null? xs1)
                x
                (iter (cdr xs1) (+ x (car xs1)))))))
    (iter xs 0))))

(define string->integer-letrec
    (lambda (str)
        (letrec ((iter (lambda (xs x)
            (if (null? xs)
                x
                (iter (cdr xs) (+ (* x 10) (- (char->integer (car xs)) 48)))))))
        (iter (string->list str) 0))))

;;; The following functions are the solution to Exercise 5
(define reverse-do
    (lambda (xs)
        (do ((xs1 xs (cdr xs1)) (sx '() (cons (car xs1) sx))) ((null? xs1) sx))))

(define sum-do
    (lambda (xs)
        (do ((xs1 xs (cdr xs1)) (x 0 (+ x (car xs1)))) ((null? xs1) x))))

(define string->integer-do
    (lambda (str)
        (do ((xs (string->list str) (cdr xs)) (x 0 (+ (* x 10) (- (char->integer (car xs)) 48)))) ((null? xs) x))))