(define (parse expr) 
  (parse-helper expr '() 
                '()))

(define (parse-helper expr operators operands) 
  (cond ((null? expr) 
         (if (null? operators) 
             (car operands) 
             (handle-op '() operators operands))) 
        ((number? (car expr)) 
         (parse-helper (cdr expr) operators (cons (make-node (car expr) 
                                                             '()) operands))) 
        ((list? (car expr)) 
         (parse-helper (cdr expr) operators (cons (parse (car expr)) operands))) 
        (else 
         (if (or (null? operators) 
                 (> (precedence (car expr)) 
                    (precedence (car operators)))) 
             (parse-helper (cdr expr) 
                           (cons (car expr) operators) operands) 
             (handle-op expr operators operands)))))

(define (handle-op expr operators operands) 
  (parse-helper expr (cdr operators) 
                (cons (make-node (car operators) 
                                 (list (cadr operands) 
                                       (car operands))) 
                      (cddr operands))))

(define (precedence oper) 
  (if (member? oper '(+ -)) 
      1
      2))

(define (compute tree) 
  (if (number? (datum tree)) 
      (datum tree) 
      ((function-named-by (datum tree)) 
       (compute (car (children tree))) 
       (compute (cadr (children tree))))))

(define (function-named-by oper) 
  (cond ((equal? oper '+) +) 
        ((equal? oper '-) -) 
        ((equal? oper '*) *) 
        ((equal? oper '/) /) 
        (else 
         (error 
          "no such operator as"
          oper))))

;; Tests
(compute (parse '(4 + 3 * 7 - 5 / (3 + 4) + 6)))
