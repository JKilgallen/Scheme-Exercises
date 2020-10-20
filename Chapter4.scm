;;; The following function is the solution to Exercise 1 question 1
(define add1
    (lambda (n)
        (+ n 1)))

;;; The following function is the solution to Exercise 1 question 2
(define sub1
    (lambda (n)
        (- n 1)))

;;; The following function is the solution to Exercise 2 question 1
(define deg-rad
    (lambda (deg)
       (* pi (/ deg 180))))

;;; The following function is the solution to Exercise 2 question 2
(define distance
    (lambda (v t)
        (* v t)))

;;; The following function is the solution to Exercise 2 question 3
(define air-time
    (lambda (v)
        (* 2 (/ v 9.8))))

;;; The following function is the solution to Exercise 2 question 4
(define distance-travelled
    (lambda (v theta)
        (let ((theta (deg-rad theta))) 
            (distance (* v (cos theta)) (air-time (* v (sin theta)))))))

;;; The following variable is the solution to Exercise 2 question 5
(define answer-2.5
    (distance-travelled 40 30))



