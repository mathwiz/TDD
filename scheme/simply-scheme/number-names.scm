(load "simply.scm")

(define GROUPS '(thousand million billion trillion quadrillion quintillion sextillion septillion
                          octillion nonillion decillion))

(define TEENS '(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen))

(define ONES '(one two three four five six seven eight nine ten))

(define (last3 n) 
  (cond ((< (count n) 3) n) 
        (else (word (last (butlast (butlast n))) 
                    (last (butlast n)) 
                    (last n)))))

(define (butlast3 n) 
  (cond ((<= (count n) 3) "") 
        (else (word (first n) 
                    (butlast3 (butfirst n))))))

(define (to-triples n) 
  (cond ((empty? n) 
         ()) 
        (else (se (to-triples (butlast3 n)) 
                  (last3 n)))))

(define (to-name triple) 
  (cond ((eq? "000" triple) 
         ()) 
        (else "trip")))

(define (number-name n) 
  (every to-name (to-triples n)))

(restart 1)
(butlast3 12345)
(to-triples 1234)
