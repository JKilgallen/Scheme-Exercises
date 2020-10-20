(define (get-answer-1.1)
    (cons "hi" "everybody"))

(define (get-answer-1.2)
    (cons 0 '()))

(define (get-answer-1.3)
    (cons 1 (cons 10 100)))

(define (get-answer-1.4)
    (cons 1 (cons 10 (cons 100 '()))))

(define (get-answer-1.5)
    (cons #\I (cons "saw" (cons 3 (cons "girls" '())))))

(define (get-answer-1.6)
    (cons "Sum of" (cons '(1 2 3 4) (cons "is" (cons 10 '())))))

;;; The following are the answers to Exercise 2
;;;
;;; 1: 0
;;; 2: ()
;;; 3: (1 2 3)
;;; 4: (2 3 . 4)
;;; 5: (2 1)