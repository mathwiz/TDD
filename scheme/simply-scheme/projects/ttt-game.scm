;; Make ttt interactive
(load "ttt.scm")

(define location 
  (lambda (letter word) 
    (if (equal? letter (first word)) 
        1
        (+ 1 (location letter (bf word))))))


(define completed-position? 
  (lambda (position) 
    (not (member? '_ position))))


(define position-won? 
  (lambda (position who) 
    (member? (word who who who) 
             (find-triples position))))


;; The simplest strategy
(define stupid-ttt 
  (lambda (position letter) 
    (location '_ position)))


(define play-ttt 
  (lambda (x-strat o-strat) 
    (play-ttt-helper x-strat o-strat '_________ 'x)))


(define play-ttt-helper 
  (lambda (x-strat o-strat position whose-turn) 
    (cond ((position-won? position (opponent whose-turn)) 
           (begin (print-position position) 
                  (list (opponent whose-turn) 'wins!))) 
          ((completed-position? position) 
           (begin (print-position position) 
                  '(tie game))) 
          (else 
           (let ((square 
                  (if (equal? whose-turn 'x) 
                      (x-strat position 'x) 
                      (o-strat position 'o)))) 
             (play-ttt-helper x-strat o-strat (add-move square whose-turn position) 
                              (opponent whose-turn)))))))


(define add-move 
  (lambda (square letter position) 
    (cond ((eq? square 1) 
           (word letter (bf position))) 
          ((number? square) 
           (word (first position) 
                 (add-move (- square 1) letter (bf position)))) 
          (else (location '_ position)))))


(define ask-user 
  (lambda (position letter) 
    (print-position position) 
    (display letter) 
    (display "'s move: ") 
    (read)))


(define print-position 
  (lambda (position) 
    (print-row (subword position 1 3)) 
    (show "-+-+-") 
    (print-row (subword position 4 6)) 
    (show "-+-+-") 
    (print-row (subword position 7 9)) 
    (newline)))


(define print-row 
  (lambda (row) 
    (maybe-display (first row)) 
    (display "|") 
    (maybe-display (first (bf row))) 
    (display "|") 
    (maybe-display (last row)) 
    (newline)))


(define maybe-display 
  (lambda (letter) 
    (if (not (equal? letter '_)) 
        (display letter) 
        (display " "))))


(define subword 
  (lambda (wd start end) 
    ((repeated bf (- start 1)) 
     ((repeated bl (- (count wd) end)) wd))))
