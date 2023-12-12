(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

(define (enumerate s)
  ; BEGIN PROBLEM 15
  (define (helper lst count)
    (if (null? lst)
        '() ; base case
        (cons (list count (car lst)) ; build a list of (count element)
              (helper (cdr lst) (+ count 1))
              )
        )
    )
  (helper s 0) ; call helper function
  )
  ; END PROBLEM 15
(enumerate '(3 4 5 6))
; expected ((0 3) (1 4) (2 5) (3 6))
(enumerate '())
; expected ()
;; Problem 16

;; Merge two lists S1 and S2 according to ORDERED? and return
;; the merged lists.
(define (merge ordered? s1 s2)
  ; BEGIN PROBLEM 16
  (if (null? s1)
      s2 ; return other list if s1 is empty
      (if (null? s2)
          s1 ; return other list if s2 is empty
          (if (ordered? (car s1) (car s2))
              (cons (car s1) ; put 1st element from s1 if in order
                    (merge ordered? (cdr s1) s2)
                    )
              (cons (car s2) ; put 1st element from s2 otherwise
                    (merge ordered? s1 (cdr s2))
                    )
              )
          )
      )
  )
  ; END PROBLEM 16
(merge < '(1 4 6) '(2 5 8))
; expected (1 2 4 5 6 8)
(merge > '(6 4 1) '(8 5 2))
; expected (8 6 5 4 2 1)
(merge < '(1) '(2 3 5))
; expected (1 2 3 5)

;; Optional Problem 2

;; Returns a function that checks if an expression is the special form FORM
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )
        ((quoted? expr)
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM 2
           'replace-this-line
           ; END OPTIONAL PROBLEM 2
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN OPTIONAL PROBLEM 2
           'replace-this-line
           ; END OPTIONAL PROBLEM 2
           ))
        (else
         ; BEGIN OPTIONAL PROBLEM 2
         'replace-this-line
         ; END OPTIONAL PROBLEM 2
         )))

; Some utility functions that you may find useful to implement for let-to-lambda

(define (zip pairs)
  'replace-this-line)
