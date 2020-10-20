;;; The following function is the solution to Exercise 1
(define distance
    (lambda (v theta)
        (let ((theta (* pi (/ theta 180))))
            (/ (* 2 v v (cos theta) (sin theta)) 9.8))))
