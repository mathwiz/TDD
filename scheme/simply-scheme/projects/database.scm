;; Usage:
;; (new-db "albums" '(artist title year good?))
(define new-db
  (lambda (filename fields)
    (begin
      (clear-current-db!)
      (set-current-db! (make-db filename fields '()))
      'created)))


(define insert
  (lambda ()
    (let ((new-record (get-record)))
      (db-insert new-record (current-db)))
    (if (ask "Insert another? ")
        (insert)
        'inserted)))


(define db-insert
  (lambda (record db)
    (db-set-records! db (cons record (db-records db)))))


(define get-record
  (lambda ()
    (get-record-loop 0 (make-vector (length (current-fields)))
                     (current-fields))))


(define get-record-loop
  (lambda (which-field record fields)
    (if (null? fields)
        record
        (begin
          (display "Value for ")
          (display (car fields))
          (display "--> ")
          (vector-set! record which-field (read))
          (get-record-loop (+ which-field 1) record (cdr fields))))))


(define ask
  (lambda (question)
    (display question)
    (let ((answer (read)))
      (cond ((equal? (first answer) 'y) #t)
            ((equal? (first answer) 'n) #f)
            (else (show "Please type Y or N.")
                  (ask question))))))


(define count-db
  (lambda ()
    (length (current-records))))


(define list-db
  (lambda ()
    (letrec
        ((display-records
          (lambda (rec-fun recs)
            (cond ((null? recs) 'listed)
                  (else (display-records (begin
                                           ;; This line just for side effect
                                           (display-record-with-number (rec-fun)
                                                                       (car recs))
                                           ;; The next function
                                           (lambda ()
                                             (+ (rec-fun) 1)))
                                         ;; Natural recursion
                                         (cdr recs)))))))
      (display-records
       (lambda ()
         1)
       (current-records)))))


(define display-record-with-number
  (lambda (num record)
    (display "RECORD ")
    (show num)
    (display-record-loop record)))


(define display-record
  (lambda (record)
    (display-record-loop record)))


(define display-record-field
  (lambda (fieldname record)
    (display fieldname)
    (display ": ")
    (show (vector-ref record (field-index fieldname)))
    'display-record-field-done))


(define display-record-loop
  (lambda (record)
    (letrec
        ((iterator
          (lambda (fields)
            (cond ((null? fields)
                   (begin (newline) 'display-record-loop-done))
                  (else (begin (display-record-field (car fields) record)
                               (iterator (cdr fields))))))))
      (iterator (current-fields)))))


(define sort-on
  (lambda (field)
    'sort-on))


(define edit-record
  (lambda (index)
    (let ((record (retrieve-record-by-index index)))
      (cond ((eq? record #f) 'no-record)
            (else
             (begin
               (edit-record-loop record)
               'edited))))))


(define edit-record-loop
  (lambda (record)
    (begin (display-record record)
           (display "Edit which field? ")
           (let ((field (read)))
             (let ((index (field-index-or-false field)))
               (cond ((eq? index #f) record)
                     (else (begin (display "New value for ")
                                  (display field)
                                  (display "--> ")
                                  (vector-set! record index (read))
                                  (edit-record-loop record)))))))))


(define save-db
  (lambda ()
    (let ((port (open-output-file (db-filename (current-db)))))
      (begin (write (current-db) port)
             (close-output-port port) 'saved))))


(define load-db
  (lambda (name)
    (begin (clear-current-db!)
           (let ((read-db
                  (lambda (portref)
                    (read portref)))
                 (port (open-input-file name)))
             (begin
               (let ((db (read-db port)))
                 (cond ((eof-object? db) 'load-db-no-db)
                       (else (set-current-db! db))))
               'loaded)))))


(define clear-current-db!
  (lambda ()
    (cond ((no-db?) #f)
          ((ask "Save db? ") (save-db))
          (else (set-current-db! #f)))))


(define get
  (lambda (fieldname record)
    (vector-ref record (field-index fieldname))))


(define sort 
  (lambda (before?) 
    (begin
      (db-set-records! (current-db) 
                       (mergesort (current-records) before?))
      'sorted)))


(define sort-on-by
  (lambda (field pred)
    (sort (lambda (r1 r2)
            (pred (get field r1)
                  (get field r2))))))


(define generic-before?
  (lambda (x y)
    'generic-before?))


(define sort-on
  (lambda (field)
    'sort-on))


(define add-field
  (lambda (name . default)
    (cond ((null? default) #f)
          (else #f))))


(define select-by
  (lambda (pred)
    'select-by))


(define count-selected
  (lambda ()
    'count-selected))


(define list-selected
  (lambda ()
    'list-selected))


(define save-selection
  (lambda (filename)
    'save-selection))


(define merge-db
  (lambda (filename field)
    (let ((other-db (read-db-from-disk other-name))
          (original-fields (current-fields)))
      (set-current-fields! (merge-fields original-fields
                                         (db-fields other-db)))
      (set-current-records! (merge-db-helper original-fields
                                             (current-records)
                                             (db-fields other-db)
                                             (db-recrods other-db)
                                             common-field)))))



;; Database ADT

(define make-db
  (lambda (filename fields records)
    (vector filename fields records)))


(define db-filename
  (lambda (db)
    (vector-ref db 0)))


(define db-set-filename!
  (lambda (db filename)
    (vector-set! db 0 filename)))


(define db-fields
  (lambda (db)
    (vector-ref db 1)))


(define db-set-fields!
  (lambda (db fields)
    (vector-set! db 1 fields)))


(define db-records
  (lambda (db)
    (vector-ref db 2)))


(define db-set-records!
  (lambda (db records)
    (vector-set! db 2 records)))


;; Index 0: current db (initially #f)
(define current-state
  (vector #f))


(define no-db?
  (lambda ()
    (not (vector-ref current-state 0))))


(define current-db
  (lambda ()
    (if (no-db?)
        (error "No current database!")
        (vector-ref current-state 0))))


(define set-current-db!
  (lambda (db)
    (vector-set! current-state 0 db)))


(define current-fields
  (lambda ()
    (db-fields (current-db))))


(define current-records
  (lambda ()
    (db-records (current-db))))


(define blank-record
  (lambda ()
    (make-vector (length (current-fields))) #f))


(define record-set!
  (lambda (record field new-value)
    (vector-set! record (field-index field) new-value)))


(define get-with-these-fields
  (lambda (fieldname record fields)
    'get-with-these-fields))


(define adjoin-field
  (lambda (new-field record)
    'adjoin-field))


;; Utilities

(define field-index
  (lambda (fieldname)
    (let ((index (field-index-or-false fieldname)))
      (cond ((eq? index #f)
             (error "No field named " fieldname))
            (else index)))))


(define field-index-or-false
  (lambda (fieldname)
    (letrec
        ((iterator
          (lambda (index fields)
            (cond ((null? fields)
                   #f)
                  ((equal? (car fields) fieldname) index)
                  (else (iterator (+ index 1)
                                  (cdr fields)))))))
      (iterator 0 (current-fields)))))


(define retrieve-record-by-index
  (lambda (index)
    (letrec ((iterator
              (lambda (num recs)
                (cond ((null? recs) #f)
                      ((eq? num index) (car recs))
                      (else (iterator
                             (+ num 1)
                             (cdr recs)))))))
      (iterator 1 (current-records)))))


(define (mergesort xs before?)
  (letrec
      ((one-half
        (lambda (xs)
          (cond ((<= (count xs) 1) xs)
                (else (cons (first xs)
                            (one-half (bf (bf xs))))))))
       (other-half
        (lambda (xs)
          (cond ((<= (count xs) 1)
                 '())
                (else (cons (first (bf xs))
                            (other-half (bf (bf xs))))))))
       (merge
        (lambda (xs ys)
          (cond ((empty? xs) ys)
                ((empty? ys) xs)
                ((before? (first xs)
                          (first ys))
                 (cons (first xs)
                       (merge (bf xs) ys)))
                (else (cons (first ys)
                            (merge xs (bf ys))))))))
    ;; do merge
    (cond ((<= (count xs) 1) xs)
          (else (merge (mergesort (one-half xs) before?)
                       (mergesort (other-half xs) before?))))))
