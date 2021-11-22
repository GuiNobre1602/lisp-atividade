(print "Hello World")

;Questão 1 Escreva as seguintes expressões em notação Lisp, 
;considerando a prioridade normal das operaçõe:

(format t "~% 17 - 45 * 23 = ~d" (- (* 45 23) 17))
(format t "~% (17 - 45) * 23 = ~d" (* (- 17 45) 23))
(format t "~% 23 - 57 * 34 / 687 = ~d" ( -( / (* 57 34) 687) 23))

;Questão 2 Qual o valor de cada expressão abaixo: 

(print (car (cdr (car (cdr '( ( ( (a b) (c d) ) (e f)) (g h)))))))
(print (cdr '(testando o lisp)))

;Questão 3 Seja a lista ( (a b (10)) (15 30) 7 (6) ). 
;Utilizando as funções CAR e CDR, selecione o valor 10 da lista.

(print (cdr (cdr (car'(  (a b (10))  (15 30) 7 (6))))))

;Questão 4. Suponha que foi definido:

(defun xxx (x)
(+ 1 x)
) 

(print (xxx (+ (xxx 5) 3)))

;Questão 5 Defina uma representação conveniente na forma de 
;lista para um conjunto de sobrenomes
;juntamente com data de nascimento e endereço de pessoas. 
;Como seria a recuperação do ano da
;data de nascimento para essa lista?


(setq pn '(Sobrenome (dia mes ano) (rua bairro cidade)))
(setq p1 '(Reis (03 may 1995) ((Jose Maria Afflalo) (Nossa Senhora) Itajubá)))

(defun recmes (list)
	(car (cdr (car (cdr list))))
)

(print (recmes pn))

(print (recmes p1))


;Questão 6. Considere a lista ‘(a bc h t gk mn da id) 
;e construa um código 
;em Lisp que realize as operações abaixo:

;a. Retornar a quantidade de elementos da lista (use length).
(print (length '(a bc h t gk mn da id)))

;b. Verificar se os valores id, b e gk estão presentes na lista (use member)
(print (member 'id '(a bc h t gk mn da id)))
(print (member 'b '(a bc h t gk mn da id)))
(print (member 'gk '(a bc h t gk mn da id)))
(print (nth 5 '(a bc h t gk mn da id)))



;Questão 7 Construa uma nova lista a 
;partir das listas A e B abaixo (use append):

;A = ‘(a b c d )
;B = ‘(10 20 30 40)

(print (append '(a b c d ) '(10 20 30 40)))


;Questão 8 Utilize SETQ para atribuir valores a variáveis
; a, b e c e calcule a expressão: ax2 + x + c, sendo
;x=10

(setq a 10)
(setq b 20)
(setq c 30)

(print (+ (+ ( * 10 10)   10)   30))






;(format t "~% A + B = ~d" (+ a b))
;(format t "~% A - B = ~d" (- a b))
;(format t "~% A x B = ~d" (* a b))
;(format t "~% B / A = ~d" (/ b a))