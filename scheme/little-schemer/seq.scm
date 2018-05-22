;; Sexp Sexp Sexp -> Sexp
;; Build a sequence a b c
(define (seqL a b c)
  (cons a (cons b c)))




;; Sexp Sexp Sexp -> Sexp
;; Build a sequence b a c
(define (seqR a b c)
  (cons b (cons a c)))




