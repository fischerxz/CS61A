(define (ascending? s) 
    (cond 
        ((null? s) #t)
        ((null? (cdr s)) #t)
        ((<= (car s) (car (cdr s))) (ascending? (cdr s)))
        (else #f)
    ))

(define (my-filter pred s)  
    (if (null? s) 
        '()
        (if (pred (car s)) 
            (cons (car s) (my-filter pred (cdr s))) 
            (my-filter pred (cdr s)))))
    

(define (interleave lst1 lst2) 
    (cond 
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1) (interleave lst2 (cdr lst1))))))

(define (no-repeats s) 
    (repeat-filter s nil)

)

(define (no-repeats s)
  (define (no-x x)
    (lambda (y) (not (= x y))))

  (if (null? s)
      '()
      (cons (car s)
            (no-repeats (filter (no-x (car s)) (cdr s))))))
