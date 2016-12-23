(load "simply.scm")

(define X1 '(a b c d))

(define (subsets wd) 
  (cond ((empty? wd) 
         (se "")) 
        (else 
         (let ((s (subsets (bf wd)))) 
           (se s (prepend-every (first wd) s))))))

(define (prepend-every letter sent) 
  (cond ((empty? sent) 
         ()) 
        (else (se (word letter (first sent)) 
                  (prepend-every letter (bf sent))))))

(subsets "rats")
(prepend-every 'a '(a fitting test))

