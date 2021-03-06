(define SUIT-SYMBOLS '(s h d c))
(define SUIT-NAMES '(spades hearts diamonds clubs))
(define RANK-SYMBOLS '(2 3 4 5 6 7 8 9 10 j q k a))
(define RANK-NAMES '(deuce three four five six seven eight nine ten jack queen king ace))

(define (poker-value hand) 
  (let ((ranked (compute-ranks hand)) 
        (pair (pair-value (compute-ranks hand))) 
        (full-house (fh-value (compute-ranks hand))) 
        (straight (straight? hand)) 
        (flush (flush? hand))) 
    (cond ((and 
            flush
            straight
            (eq? (high-card ranked) 'ace)) 
           (se 'royal 'flush '- flush)) 
          ((and 
            flush
            straight) 
           (se 'straight 'flush '- (word straight '-high) 'of flush)) 
          ((quads? ranked) 
           (se 'four 'of 'a 'kind '- (word (quads? ranked) 's))) 
          (full-house) 
          (flush (se (word (high-card ranked) '-high) 'flush '- flush)) 
          (straight (se (word straight '-high) 'straight)) 
          ((trips? ranked) 
           (se 'three 'of 'a 'kind '- (word (trips? ranked) 's))) 
          (pair) 
          (else (se 'high 'card (high-card ranked))))))

(define (fh-value ranked) 
  (let ((fh (full-house? ranked))) 
    (cond (fh (se 'full 'house '- (word (first fh) 's) 'over (word (last fh) 's))) 
          (else #f))))

(define (pair-value ranked) 
  (let ((two-pair (two-pair? ranked)) 
        (pair (pair? ranked))) 
    (cond (two-pair (se 'two 'pair '- (word (first two-pair) 's) 'over (word (last two-pair) 's))) 
          (pair (se 'pair 'of (word pair 's))) 
          (else #f))))

(define (compute-ranks hand) 
  (rank-computer (ranks-in hand) RANK-NAMES ()))

(define (rank-computer counts ranks acc) 
  (cond ((empty? counts) acc) 
        ((= 0 (first counts)) 
         (rank-computer (bf counts) 
                        (bf ranks) acc)) 
        (else (rank-computer (bf counts) 
                             (bf ranks) 
                             (se (first counts) 
                                 (first ranks) acc)))))

(define (suit card) 
  (first card))

(define (rank card) 
  (bf card))

(define (in? fun type card) 
  (eq? type (fun card)))

(define (elem-one x) 1)

(define (count-type type-f type h) 
  (accumulate + (every elem-one (keep 
                                 (lambda (x) 
                                   (in? type-f type x))
                                 h))))

(define (count-suit s h) 
  (count-type suit s h))

(define (count-rank r h) 
  (count-type rank r h))

(define (suits-in hand) 
  (every 
   (lambda (x) 
     (count-suit x hand))
   SUIT-SYMBOLS))

(define (ranks-in hand) 
  (every 
   (lambda (x) 
     (count-rank x hand))
   RANK-SYMBOLS))

(define (any-flush counts suits) 
  (cond ((empty? counts) #f) 
        ((= 5 (first counts)) 
         (first suits)) 
        (else (any-flush (bf counts) 
                         (bf suits)))))

(define (any-straight counts ranks acc) 
  (cond ((= 5 acc) 
         (first ranks)) 
        ((and 
          (= 4 acc) 
          (= 1 (last counts)) 
          (eq? 'five (first ranks))) 
         (first ranks)) 
        ((empty? counts) #f) 
        ((= 1 (first counts)) 
         (any-straight (bf counts) 
                       (bf ranks) 
                       (+ acc 1))) 
        (else (any-straight (bf counts) 
                            (bf ranks) 0))))

(define (flush? hand) 
  (any-flush (suits-in hand) SUIT-NAMES))

(define (straight? hand) 
  (any-straight (ranks-in hand) 
                (se (last RANK-NAMES) RANK-NAMES) 0))

(define (pair? ranked-hand) 
  (let ((pairs (find-pairs ranked-hand))) 
    (if (= 1 (count pairs)) 
        (first pairs)
        #f)))

(define (two-pair? ranked-hand) 
  (let ((pairs (find-pairs ranked-hand))) 
    (if (= 2 (count pairs)) 
        pairs
        #f)))

(define (find-pairs ranked-hand) 
  (cond ((empty? ranked-hand) 
         ()) 
        ((= 2 (first ranked-hand)) 
         (se (first (bf ranked-hand)) 
             (find-pairs (bf (bf ranked-hand))))) 
        (else (find-pairs (bf (bf ranked-hand))))))

(define (sames? n ranked-hand) 
  (cond ((empty? ranked-hand) #f) 
        ((= n (first ranked-hand)) 
         (first (bf ranked-hand))) 
        (else (sames? n (bf (bf ranked-hand))))))

(define (trips? ranked-hand) 
  (sames? 3 ranked-hand))

(define (quads? ranked-hand) 
  (sames? 4 ranked-hand))

(define (full-house? ranked-hand) 
  (let ((pair (pair? ranked-hand)) 
        (trip (trips? ranked-hand))) 
    (if (and pair 
             trip) 
        (se trip pair)
        #f)))

(define (high-card ranked-hand) 
  (first (bf ranked-hand)))

(define X1 '(h6 h2 h3 h4 h5))
(define X2 '(sa c2 h3 h4 d5))
(define X3 '(sa ca h10 d10 da))
(define X4 '(ha h2 h3 h4 h5))
(define X5 '(h6 h7 h8 h9 h10))
(define X6 '(h8 h7 c8 s10 h10))
(define X7 '(h4 h7 c8 s10 h10))
(define X8 '(h4 c4 s4 d4 da))
(define X9 '(h2 c3 s4 d5 dj))
(define TR '(h2 c2 s2 s4 sj))
(define RF '(ca c10 cj cq ck))
(restart 1)
(full-house? (compute-ranks X3))
(straight? RF)
(high-card (compute-ranks X9))
(trips? (compute-ranks X3))
(poker-value X3)
