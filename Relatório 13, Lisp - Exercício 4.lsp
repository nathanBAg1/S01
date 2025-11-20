(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)
  
(defvar *catalogo*
  (list
    (make-ocorrencia :nome "Desassombrado" :ritual "Temporal" :nivel-medo 6 :agentes-enviados 4)
    (make-ocorrencia :nome "A Desconjuracao" :ritual "Desconjurar" :nivel-medo 3 :agentes-enviados 6)
    (make-ocorrencia :nome "Ilha de Tipora" :ritual "Tinta" :nivel-medo 4 :agentes-enviados 2)
    (make-ocorrencia :nome "O Segredo na Floresta" :ritual "Floresta" :nivel-medo 5 :agentes-enviados 5)
    (make-ocorrencia :nome "Hexatombe" :ritual "Sangue" :nivel-medo 7 :agentes-enviados 6)))

(defun soma-medo-recursiva (lista-ocorrencias)
  (cond 
    ((null lista-ocorrencias) 0)
    (t (+ (ocorrencia-nivel-medo (car lista-ocorrencias))
      (soma-medo-recursiva (cdr lista-ocorrencias))))))

(defun analise-final (lista-ocorrencias)
  (let* ((total (soma-medo-recursiva lista-ocorrencias))
         (media (/ total (length lista-ocorrencias)))
         (criticas 
            (remove-if-not
              (lambda (op)
                (and (> (ocorrencia-agentes-enviados op) 3)
                     (> (ocorrencia-nivel-medo op) media)))
              lista-ocorrencias)))
    (mapcar #'ocorrencia-nome criticas)))


(format t "Fazendo a Analise Final: ~%")
(dolist (linha (analise-final *catalogo*))
  (format t "~A~%" linha))