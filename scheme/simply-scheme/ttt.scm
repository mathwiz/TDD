(define ALL-WINS '(123 456 789 147 258 369 159 357))

(define (substitute-triple combination position) 
  (accumulate word (every 
                    (lambda (square) 
                      (substitute-letter square position))
                    combination)))

(define (substitute-letter square position) 
  (if (equal? '_ (item square position)) 
      square
      (item square position)))
