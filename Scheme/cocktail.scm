;20204646

;reference: https://www.geeksforgeeks.org/cocktail-sort/

;Sample input  : (cocktail '(5 10 9 8 7 30 2 6 5 1))

(define (cocktail_in A)
    (if (null? (cdr A))   
        A    
        (if (< (car A) (cadr A))   
            (cons (car A) (cocktail_in (cdr A)))   
            (cons (cadr A) (cocktail_in (cons (car A) (cddr A)))))))

(define (cocktail-sort J A)    
    (cond ((= J 1) (cocktail_in A))   
          (else (cocktail-sort (- J 1) (cocktail_in A)))))

  (define (cocktail A) 
    (cocktail-sort (length A) A))