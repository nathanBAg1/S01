(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)
  
(defvar *catalogo*
  (list
    (make-criatura :nome "Safe Shallows" :ambiente "Safe Shallows" :periculosidade "Periculosidade Baixa" :vida-media 10)
    (make-criatura :nome "Reaper Leviathan" :ambiente "Deep" :periculosidade "Periculosidade Alta" :vida-media 100)
    (make-criatura :nome "Lambari" :ambiente "Deep" :periculosidade "Periculosidade Baixa" :vida-media 15)
    (make-criatura :nome "Atum" :ambiente "Deep" :periculosidade "Periculosidade Baixa" :vida-media 5)))

(defun filtra-por-perigo (catalogo)
  (remove-if (lambda (criatura)
    (string-equal (criatura-periculosidade criatura) "Periculosidade Baixa")) catalogo))

(defun relatorio-profundidade (catalogo)
  (let ((deep-only (remove-if-not
    (lambda (criatura)
      (string-equal (criatura-ambiente criatura) "Deep")) catalogo)))
    (mapcar (lambda (criatura)
      (format nil "[~A]: Vive em [~A]" (criatura-nome criatura) (criatura-ambiente criatura))) deep-only)))
      
(format t "Filtrando por Perigo: ~%")
(dolist (criatura (filtra-por-perigo *catalogo*))
  (format t "Nome: ~A; Ambiente: ~A; Periculosidade: ~A~%" (criatura-nome criatura) (criatura-ambiente criatura) (criatura-periculosidade criatura)))
  
(format t "~%Relatorio de Profundidade:~%")
(dolist (linha (relatorio-profundidade *catalogo*))
  (format t "~A~%" linha))