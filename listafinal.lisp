(write-line "Hello World")
 
 
;Questão 1
(print (car '((a b c d)))) ;(A B C D) 
(print(cdr '((a b c d)))) ; NIL 
(print (cons (car '(a b f)) (cons (cons 'c '(x)) nil))) ; (A (C X)) 
 
 
;Questão 2
(print (car '(A 17 -3))) ; A 
(print (cdr '(A 17 -3))) ; (17 -3) 
 
(print (car '((A 5 C) %))) ; (A 5 C) 
(print (cdr '((A 5 C) %))) ; (%)
 
(print (car '((A 5 C) (%)))); (A 5 C)
(print (cdr '((A 5 C) (%)))); ((%))
 
(print (car '((NIL 6 A) ((A B))))); (NIL 6 A) 
(print (cdr '((NIL 6 A) ((A B))))); (((A B)))
 
(print (car '((* ( + 15 (- 6 4)) -3)))); (* (+ 15 (- 6 4)) -3) 
(print (cdr '((* ( + 15 (- 6 4)) -3)))); NIL 
 
;Questão 3
(print (cdr (car (cdr '( (a b (10)) (15 30) 7 (6) )))))
 
;Questão 4 e 5
(defun xxx (x)
(+ 1 x)
) 
 
(print (xxx 2) ) ; 3
(print (+ 4 (xxx 8) (xxx 9))); 23
 
;Questão 7 
 
;Letra A 
 
(defun sete-a (a b)
    (print (+ a b))
    (print (*(+ a b)10)))
 
(sete-a 5 11); 16 e 160
 
;Letra B
(defun sete-b (a)
    (print (list a)))
 
(sete-b 6); (6) 
 
;Letra C 
(defun sete-c(a b c d)
     (setq valA (+ a b))
     (setq valB (+ c d))
     (print( list valA valB)))
 
(sete-c 6 8 9 7); (14 16) 
 
;Questão 8
(defun return_num (val)
    (cond ((> val 0) (print 1))
          ((< val 0) (print -1))
          (t (print 0))))
 
(return_num 1)  ;1
(return_num 0)  ;0
(return_num -1) ;-1

;Questão 9 

(defun compara (str1 str2)
    (cond ( (equal str1 str2) (print "Saudações"))
            (t NIL)
    )
)

(compara "guilherme" "guilherme")

;Questão 10
(defun calc_multi_div (a b c)
    (cond ( (equal a "*") (print (* b c) ))
          ( (equal a "/") (print (/ b c) ))
                     (t (print 0))))
          
(calc_multi_div "*" 2 3); 6
(calc_multi_div "/" 2 3); 2/3


;Questão 12
(defun calc_raio2 (val)
    (cond ((> val 0) (print (* (* (/ 4 3) (* (* val val) val)) 3.1415 )))
          (t (print -1))))       

(calc_raio2 3) ;113.094    
(calc_raio2 -12) ;-1


;Questão 13
(defun delta-calc (a b c)
  (- (expt b 2) (* a c 4)))
(defun achar-raizes (a b delta)
  (list (/ (- delta b) (* a 2))
	(/ (- (+ delta b)) (* a 2))))
(defun bhaskara (a b c)
  (unless (< (delta-calc a b c) 0)
    (achar-raizes a b (delta-calc a b c))))
    
;Questão 15

          
(defun emprestimo (val mes)
    (cond ((> val 1000) (print (* (* val mes) 0.125)))
          ((< val 1000) (print (* (* val mes) 0.098)))
          (t (print 0))))

(emprestimo 511 2)

;Questão 17

(defun factorial (n)
  (if (= n 0)
      1
      (* n (factorial (- n 1))) ) )

(loop for i from 0 to 16
   do (format t "~D! = ~D~%" i (factorial i)) )

;Questão 18


;Questão 19

(defun enumera (num)
    (loop for i from 0 to num
       do (format t "~D " i)))

(enumera 10)       
