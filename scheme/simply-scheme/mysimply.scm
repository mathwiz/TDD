(define (every f l) 
  (cond ((null? l) 
         '()) 
        (else (cons (f (car l)) 
                    (every f (cdr l))))))

(define (keep f l) 
  (cond ((null? l) 
         '()) 
        (else 
         (if (f (car l)) 
             (cons (car l) 
                   (keep f (cdr l))) 
             (keep f (cdr l))))))

(define (do-acc f l acc) 
  (cond ((null? l) acc) 
        (else (do-acc f (cdr l) 
                      (f acc (car l))))))

(define (accumulate f l) 
  (cond ((null? l) #f)
        (else (do-acc f (cdr l) (f (car l))))))
