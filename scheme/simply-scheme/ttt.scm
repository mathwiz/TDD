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
  (cond (#f 1) 
        (#t 2)))

(define (ttt-choose triples me) 
  (cond (#f (+ 1)) 
        (#t (+ 2))))

(define (ttt position me) 
  (ttt-choose (find-triples position) me))

;; TESTS
(restart 1)
(define board '_xo_x_o__)
(define board2 'x_____oxo)
(substitute-triple 123 board)
(find-triples board2)
(opponent 'o)
(my-pair? 'oox 'o)
(my-pair? 'oo3 'o)
