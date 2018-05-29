(define ROWS 30)
(define COLS 26)
(define SCR_ROWS 10)
(define SCR_COLS 6)


(define (spreadsheet)
  (init-array)
  (set-selection-cell-id! (make-id 1 1))
  (set-screen-corner-cell-id! (make-id 1 1))
  (command-loop))


(define (command-loop) 
  (print-screen) 
  (let ((command-or-formula (read))) 
    (if (equal? command-or-formula 'exit) 
        "Bye!"
        (begin (process-command command-or-formula) 
               (command-loop)))))


(define (process-command command-or-formula)
  (cond ((and (list? command-or-formula) (command? (car command-or-formula)))
         (execute-command command-or-formula))
        ((command? command-or-formula)
         (execute-command (list command-or-formula 1)))
        (else
         (exhibit (ss-eval (pin-down command-or-formula (selection-cell-id)))))))


(define (execute-command command)
  (apply (get-command (car command))
         (cdr command)))


(define (exhibit val)
  (show val)
  (show "Type RETURN to redraw screen")
  (read-line)
  (read-line))


;; Commands

(define (prev-row delta)
  (let ((row (id-row (selection-cell-id))))
    (if (< (- row delta) 1)
        (error-msg "Already at top.")
        (set-selected-row! (- row delta)))))


(define (next-row delta)
  (let ((row (id-row (selection-cell-id))))
    (if (> (+ row delta) ROWS)
        (error-msg "Already at bottom.")
        (set-selected-row! (+ row delta)))))


(define (prev-col delta)
  (let ((col (id-column (selection-cell-id))))
    (if (< (- col delta) 1)
        (error-msg "Already at left.")
        (set-selected-column! (- col delta)))))


(define (next-col delta)
  (let ((col (id-column (selection-cell-id))))
    (if (> (+ col delta) COLS)
        (error-msg "Already at right.")
        (set-selected-column! (+ col delta)))))


(define (error-msg msg)
  (show msg))


(define (set-selected-row! new-row)
  (select-id! (make-id (id-column (selection-cell-id)) new-row)))


(define (set-selected-column! new-column)
  (select-id! (make-id new-column (id-row (selection-cell-id)))))


(define (select-id! id)
  (set-selection-cell-id! id)
  (adjust-screen-boundaries))


(define (select cell-name)
  (select-id! (cell-name->id cell-name)))


(define (adjust-screen-boundaries)
  (let ((row (id-row (selection-cell-id)))
        (col (id-column (selection-cell-id))))
    (if (< row (id-row (screen-corner-cell-id)))
        (set-corner-row! row)
        'do-nothing) 
    (if (>= row (+ (id-row (screen-corner-cell-id)) SCR_ROWS))
        (set-corner-row! (- row (- SCR_ROWS 1)))
        'do-nothing)
    (if (< col (id-column (screen-corner-cell-id)))
        (set-corner-column! col)
        'do-nothing)
    (if (>= col (+ (id-column (screen-corner-cell-id)) SCR_COLS))
        (set-corner-column! (- col (- SCR_COLS 1)))
        'do-nothing)
))


(define (set-corner-row! new-row)
  (set-screen-corner-cell-id! (make-id (id-column (screen-corner-cell-id)) new-row))) 


(define (set-corner-column! new-column)
  (set-screen-corner-cell-id! (make-id new-column (id-row (screen-corner-cell-id))))) 



;; LOAD

(define (spreadsheet-load filename)
  (let ((port (open-input-file filename)))
    (sl-helper port)
    (close-input-port port)))


(define (sl-helper port)
  (let ((command (read port)))
    (if (eof-object? command)
        'done
        (begin
          (show command)
          (process-command command)
          (sl-helper port)))))



;; PUT

(define (put formula . where)
  (cond ((null? where)
         (put-formula-in-cell formula (selection-cell-id)))
        ((cell-name? (car where))
         (put-formula-in-cell formula (cell-name->id (car where))))
        ((number? (car where))
         (put-all-cells-in-row formula (car where)))
        ((letter? (car where))
         (put-all-cells-in-col formula (letter->number (car where))))
        (else
         (error "Put it where?"))))


(define (put-all-cells-in-row formula row)
  (put-all-helper formula (lambda (col) (make-id col row)) 1 COLS))


(define (put-all-cells-in-col formula col)
  (put-all-helper formula (lambda (row) (make-id col row)) 1 ROWS))


(define (put-all-helper formula id-maker this max)
  (if (> this max)
      'done
      (begin
        (try-putting formula (id-maker this))
        (put-all-helper formula id-maker (+ this 1) max))))


(define (try-putting forumula id)
  (if (or (null? (cell-value id)) (null? formula))
      (put-formula-in-cell formula id)
      'do-nothing))


(define (put-formula-in-cell formula id)
  (put-expr (pin-down formula id) id))



;; Association list of commands

(define (command? name)
  (assoc name *the-commands*))


(define (get-command name)
  (let ((result (assoc name *the-commands*)))
    (if (not result) #f (cadr result))))


(define *the-commands*
  (list (list 'p prev-row)
        (list 'n next-row)
        (list 'b prev-col)
        (list 'f next-col)
        (list 'select select)
        (list 'put put)
        (list 'load spreadsheet-load)))



;; Pinning down formulas into expressions

(define (pin-down formula id)
  (cond ((cell-name? formula) (cell-name->id formula))
        ((word? formula) formula)
        ((null? formula) '())
        ((equal? (car formula) 'cell) (pin-down-cell (cdr formula) id))
        (else
         (bound-check
          map (lambda (subformula) (pin-down subformula id)) formula))))


(define (bound-check form)
  (if (member 'out-of-bounds form)
      'out-of-bounds
      form))


(define (pin-down-cell args reference-id)
  (cond ((null? args) (error "Bad cell specification: (cell)"))
        ((null? (cdr args))
         'null-cdr-args)
        (else
         'else)))


(define (pin-down-col new old)
  (cond ((equal? new '*) old)
        ((equal? (first new) '>) (+ old (bf new)))
        ((equal? (first new) '<) (- old (bf new)))
        ((letter? new) (letter->number new))
        (else
         (error "What column?"))))


(define (pin-down-row new old)
  (cond ((number? new) new)
        ((equal? new '*) old)
        ((equal? (first new) '>) (+ old (bf new)))
        ((equal? (first new) '<) (- old (bf new)))
        (else
         (error "What row?"))))



;; Dependency management



;; Evaluating expressions

(define (ss-eval expr)
  (cond ((number? expr) expr)
        (else
         (error "Invalid expression: " expr))))


(define (quoted? expr)
  (or (string? expr)
      (and (list? expr) (equal? (car expr) 'quote))))


(define (quoted-value expr)
  (if (string? expr) expr (cadr expr)))


(define (invocation? expr)
  (list? expr))


(define (get-function name)
  (let ((result (assoc name *the-functions*)))
    (if (not result)
        (error "No such function: " name)
        (cadr result))))


(define *define-functions*
  (list (list '* *)
        (list '+ +)
        (list '- -)
        (list '/ /)
        (list 'count count)
        (list 'exp exp)
        (list 'expt expt)
        (list 'max max)
        (list 'min min)
        (list 'round round)
        (list 'truncate truncate)))



;; Printing the screen

(define (print-screen)
  (newline)
  (newline)
  (newline)
  (show-column-labels (id-column (screen-corner-cell-id)))
  (show-rows SCR_ROWS
             (id-column (screen-corner-cell-id))
             (id-row (screen-corner-cell-id)))
  (display-cell-name (selection-cell-id))
  (display ":  ")
  (show (cell-value (selection-cell-id)))
  (display-expression (cell-expr (selection-cell-id)))
  (newline)
  (display "?? "))


(define (display-cell-name id)
  (display (number->letter (id-column id)))
  (display (id-row id)))


(define (show-column-labels col-number)
  (display "  ")
  (show-label SCR_COLS col-number))


(define (show-label to-go this-col-number)
  (cond ((= to-go 0) '())
        (else
         (display "  -----")
         (display (number->letter this-col-number))
         (display "----")
         (show-label (- to-go 1) (+ this-col-number 1)))))


(define (show-rows to-go col row)
  (cond ((= to-go 0))
        (else
         (display (align row 2 0))
         (display " ")
         (show-row SCR_ROWS col row)
         (newline)
         (show-rows (- to-go 1) col (+ row 1)))))


(define (show-row to-go col row)
  (cond ((= to-go 0) 'done)
        (else
         (display (if (selected-indices? col row) ">" " "))
         (display-value (cell-value-from-indices col row))
         (display (if (selected-indices? col row) "<" " "))
         (show-row (- to-go 1) (+ col 1) row))))


(define (selected-indices? col row)
  (and (= col (id-column (selection-cell-id)))
       (= row (id-row (selection-cell-id)))))


(define (display-value val)
  (display (align (if (null? val) "" val) 10 2)))


(define (display-expression expr)
  (cond ((null? expr) (display '()))
        ((quoted? expr) (display (quoted-value expr)))
        ((word? expr) (display expr))
        ((id? expr) (display-cell-name expr))
        (else (display-invocation expr))))


(define (display-invocation expr)
  (display "(")
  (display-expression (car expr))
  (for-each (lambda (subexpr)
              (display " ")
              (display-expression subexpr))
            (cdr expr))
  (display ")"))



;; Special cells

(define *special-cells* (make-vector 2))


(define (selection-cell-id)
  (vector-ref *special-cells* 0))


(define (set-selection-cell-id! new-id)
  (vector-set! *special-cells* 0 new-id))


(define (screen-corner-cell-id)
  (vector-ref *special-cells* 1))


(define (set-screen-corner-cell-id! new-id)
  (vector-set! *special-cells* 1 new-id))



;; Cell names

(define (cell-name? expr)
  (and (word? expr)
       (letter? (first expr))
       (number? (bf expr))))


(define (cell-name-column cell-name)
  (letter->number (first cell-name)))


(define (cell-name-row cell-name)
  (bf cell-name))


(define (cell-name->id cell-name)
  (make-id (cell-name-column cell-name)
           (cell-name-row cell-name)))



;; Cell IDs

(define (make-id col row)
  (list 'id col row))


(define (id-column id)
  (cadr id))


(define (id-row id)
  (caddr id))


(define (id? x)
  (and (list? x)
       (not (null? x))
       (equal? 'id (car x))))



;; Cells
(define (make-cell)
  (vector '() '() '() '()))


(define (cell-value id)
  (vector-ref (cell-structure id) 0))


(define (cell-value-from-indices col row)
  (vector-ref (cell-structure-from-indices col row) 0))


(define (cell-expr id)
  (vector-ref (cell-structure id) 1))


(define (cell-parents id)
  (vector-ref (cell-structure id) 2))


(define (cell-children id)
  (vector-ref (cell-structure id) 3))


(define (set-cell-value! id val)
  (vector-set! (cell-structure id) 0 val))


(define (set-cell-expr! id val)
  (vector-set! (cell-structure id) 1 val))


(define (set-cell-parents! id val)
  (vector-set! (cell-structure id) 2 val))


(define (set-cell-children! id val)
  (vector-set! (cell-structure id) 3 val))


(define (cell-structure id)
  (global-array-lookup (id-column id)
                       (id-row id)))


(define (cell-structure-from-indices col row)
  (global-array-lookup col row))


(define *the-spreadsheet-array* (make-vector ROWS))


(define (global-array-lookup col row)
  (if (and (<= row ROWS) (<= col COLS))
      (vector-ref (vector-ref *the-spreadsheet-array* (- row 1))
                  (- col 1))
      (error "Out of bounds")))


(define (init-array)
  (fill-array-with-rows (- ROWS 1)))


(define (fill-array-with-rows n)
  (if (< n 0)
      'done
      (begin (vector-set! *the-spreadsheet-array* n (make-vector COLS))
             (fill-row-with-cells (vector-ref *the-spreadsheet-array* n) (- COLS 1))
             (fill-array-with-rows (- n 1)))))


(define (fill-row-with-cells vec n)
  (if (< n 0)
      'done
      (begin (vector-set! vec n (make-cell))
             (fill-row-with-cells vec (- n 1)))))



;; Utility functions

(define alphabet
  '#(a b c d e f g h i j k l m n o p q r s t u v w x y z))


(define (letter? something)
  (and (word? something)
       (= 1 (count something))
       (vector-member something alphabet)))


(define (number->letter num)
  (vector-ref alphabet (- num 1)))


(define (letter->number letter)
  (+ (vector-member letter alphabet) 1))


(define (vector-member thing vector)
  (vector-member-helper thing vector 0))


(define (vector-member-helper thing vector index)
  (cond ((= index (vector-length vector)) #f)
        ((equal? thing (vector-ref vector index)) index)
        (else (vector-member-helper thing vector (+ index 1)))))


(define (remdup lst)
  (cond ((null? lst) '())
        ((member (car lst) (cdr lst)) (remdup (cdr lst)))
        (else (cons (car lst) (remdup (cdr lst))))))


(define (remove bad-item lst)
  (filter (lambda (item) (not (equal? item bad-item)))
          lst))
