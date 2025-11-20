(defun calcula-dosagem (peso idade)
  (cond
    ((or (< idade 5) (< peso 20)) 10)
    ((and (>= idade 5) (< idade 12) (>= peso 20)) 25)
    (t 50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string-equal nome-da-erva "Ginseng") (* preco-base 3.0))
    ((string-equal nome-da-erva "Lotus") (* preco-base 1.5))
    (t preco-base)))


(let ((idade 14)
  (peso 60)
  (nome-da-erva "Lotus")
  (preco-base 10))
  
  (format t "Paciente com 14 anos de idade e 60 kg. Erva Lotus.~%")
  (format t "Calculando dosagem para paciente: ~%")
  (format t "Dosagem: ~A ml~%" (calcula-dosagem peso idade))
  (format t "Preco final: ~A moedas~%" (ajusta-preco preco-base nome-da-erva)))

(format t "~%")

(let ((idade 4)
  (peso 25)
  (nome-da-erva "Ginseng")
  (preco-base 10))
  
  (format t "Paciente com 4 anos de idade e 25 kg. Erva Ginseng.~%")
  (format t "Calculando dosagem para paciente: ~%")
  (format t "Dosagem: ~A ml~%" (calcula-dosagem peso idade))
  (format t "Preco final: ~A moedas~%" (ajusta-preco preco-base nome-da-erva)))
  
(format t "~%")  
  
(let ((idade 5)
  (peso 25)
  (nome-da-erva "Margarida")
  (preco-base 10))
  
  (format t "Paciente com 5 anos de idade e 25 kg. Erva Margarida.~%")
  (format t "Calculando dosagem para paciente: ~%")
  (format t "Dosagem: ~A ml~%" (calcula-dosagem peso idade))
  (format t "Preco final: ~A moedas~%" (ajusta-preco preco-base nome-da-erva)))