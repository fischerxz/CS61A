(define (if-program condition if-true if-false)
  `(if ,condition ,if-true , if-false))


(define (pow-expr n p) 
  (cond ((= p 0) `(* 1 1))
        ((= p 1) `(* 1 ,n))
        (else `(* ,(pow-expr n (- p 1)) ,n))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (swap expr)
  (let ((op (car expr))
        (first (car (cdr expr)))
        (second (caddr expr))
        (rest (cdr (cddr expr))))
    (if (>= (eval first) (eval second))
          expr
          (cons op (cons second (cons first rest)))
    )))
