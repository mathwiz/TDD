(define (card-val card) 
  (let ((rank (butfirst card))) 
    (cond ((equal? rank 'a) 4) 
          ((equal? rank 'k) 3) 
          ((equal? rank 'q) 2) 
          ((equal? rank 'j) 1) 
          (else 0))))

(define (high-card-points hand) 
  (accumulate + (every card-val hand)))

(define (in-suit? suit card) 
  (equal? suit (first card)))

(define (count-suit suit hand) 
  (let ((count 
         (lambda (it) 
           1)) 
        (suitp? 
         (lambda (card) 
           (in-suit? suit card)))) 
    (accumulate + (every count (keep suitp? hand)))))

(define (suit-counts hand) 
  (let ((count 
         (lambda (suit) 
           (count-suit suit hand)))) 
    (se (count 's) 
        (count 'h) 
        (count 'd) 
        (count 'c))))

(define (suit-dist-points count) 
  (cond ((= count 0) 3) 
        ((= count 1) 2) 
        ((= count 2) 1) 
        (else 0)))

(define (hand-dist-points hand) 
  (accumulate + (every suit-dist-points (suit-counts hand))))

(define (bridge-val hand)
  (+ (hand-dist-points hand) (high-card-points hand)))
