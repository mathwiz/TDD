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

(define (find-triples position) 
  (every 
   (lambda (comb) 
     (substitute-triple comb position))
   ALL-WINS))

(define (opponent letter) 
  (if (equal? letter 'x) 
      'o
      'x))

(define (my-pair? triple me) 
  (and (= (appearances me triple) 2) 
       (= (appearances (opponent me) triple) 0)))

(define (i-can-win? triples me) 
  (choose-win (keep 
               (lambda (triple) 
                 (my-pair? triple me))
               triples)))

(define (opponent-can-win? triples me) 
  (i-can-win? triples (opponent me)))

(define (choose-win winning-triples) 
  (if (empty? winning-triples) 
      #f
      (keep number? (first winning-triples))))

(define (my-single? triple me) 
  (and (= (appearances me triple) 1) 
       (= (appearances (opponent me) triple) 0)))

(define (extract-digit desired-digit wd) 
  (keep 
   (lambda (wd-digit) 
     (equal? wd-digit desired-digit))
   wd))

(define (sort-digits digits) 
  (every 
   (lambda (digit) 
     (extract-digit digit digits)) 
   '(1 2 3 4 5 6 7 8 9)))

(define (repeated-numbers sent) 
  (every first (keep 
                (lambda (wd) 
                  (>= (count wd) 2)) 
                (sort-digits (accumulate word sent)))))

(define (pivots triples me) 
  (repeated-numbers (keep 
                     (lambda (triple) 
                       (my-single? triple me))
                     triples)))

(define (first-if-any sent) 
  (if (empty? sent) 
      #f
      (first sent)))

(define (i-can-fork? triples me) 
  (first-if-any (pivots triples me)))

;; Not helpful so don't use
;; (define (opponent-can-fork? triples me)
;;   (i-can-fork? triples (opponent me)))

(define (i-can-advance? triples me) 
  (best-move (keep 
              (lambda (triple) 
                (my-single? triple me))
              triples) triples me))

(define (best-move my-triples all-triples me) 
  (if (empty? my-triples) 
      #f
      (best-square (first my-triples) all-triples me)))

(define (best-square my-triple triples me) 
  (best-square-helper (pivots triples (opponent me)) 
                      (keep number? my-triple)))

(define (best-square-helper opponent-pivots pair) 
  (if (member? (first pair) opponent-pivots) 
      (first pair) 
      (last pair)))

(define (best-free-square triples) 
  (first-choice (accumulate word triples) 
                '(5 1 3 7 9 2 4 6 8)))

(define (first-choice possibilities preferences) 
  (first (keep 
          (lambda (square) 
            (member? square possibilities))
          preferences)))

(define (ttt-choose triples me) 
  (cond ((already-won? triples me) 'you-are-the-winner) 
        ((tie-game? triples me) 'game-is-tied)
        ((i-can-win? triples me)) 
        ((opponent-can-win? triples me)) 
        ((i-can-fork? triples me)) 
        ((i-can-advance? triples me)) 
        (else (best-free-square triples))))

(define (ttt position me) 
  (ttt-choose (find-triples position) me))

(define (already-won? triples me) 
  (first-if-any (keep 
                 (lambda (triple) 
                   (my-win? triple me))
                 triples)))

(define (my-win? triple me) 
  (= (appearances me triple) 3))

(define (tie-game? triples me) 
  (empty? (keep 
           (lambda (triple) 
             (or (not (zero-freedom? triple)))
                 (my-pair? triple me)) 
           triples)))

(define (zero-freedom? triple) 
  (= (+ (appearances 'x triple) 
        (appearances 'o triple)) 3))

;; TESTS
(restart 1)
(define board '_xo_x_o__)
(define board2 'x_____oxo)
(define board3 'xo__x___o)
(substitute-triple 123 board)
(find-triples board3)
(find-triples board2)
(find-triples board)
(opponent 'o)
(my-pair? 'oox 'o)
(my-pair? 'oo3 'o)
(choose-win '(003))
(i-can-win? (find-triples board2) 'x)
(i-can-win? (find-triples board) 'x)
(opponent-can-win? (find-triples board) 'o)
(repeated-numbers (find-triples board3))
(extract-digit 7 "4x6x473x7")
(ttt '_________ 'x)
(ttt '____x____ '0)
(ttt 'o___x____ 'x)
(ttt 'o___xx___ 'o)
(ttt 'o__oxx___ 'x)
(ttt 'o__oxxx__ 'o)
(ttt 'o_ooxxx__ 'x)
(ttt 'oxooxxx__ 'o)
(ttt 'oxooxxxo_ 'x)
(ttt 'oxooxxxox 'o)
;; Already a winner
(ttt 'oooxxo_xx 'x)
(my-win? 'ooo 'x)
(tie-game? (find-triples 'oxooxxx__) 'x)
