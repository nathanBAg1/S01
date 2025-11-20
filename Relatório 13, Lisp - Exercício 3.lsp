(defstruct item
  nome
  tipo
  preco
  forca-magica)
  
(defvar *catalogo*
  (list
    (make-item :nome "Nunchaku" :tipo "Arma" :preco 50 :forca-magica 15)
    (make-item :nome "Shuriken" :tipo "Arma" :preco 15 :forca-magica 7.5)
    (make-item :nome "Excalibur" :tipo "Arma" :preco 300 :forca-magica 85)
    (make-item :nome "Elixir de Vida" :tipo "Pocao" :preco 10.5 :forca-magica 25)
    (make-item :nome "Esfera do Dragao" :tipo "Artefato" :preco 200 :forca-magica 100)))

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (cond
    ((> forca 80) (* forca 1.5))
    (t forca)))

(defun processa-venda (catalogo)
  (let ((armas (remove-if-not
    (lambda (item)
      (string-equal (item-tipo item) "Arma")) catalogo)))
    (let ((armas-item (mapcar (lambda (item)
        (make-item :nome (item-nome item) :tipo (item-tipo item) :preco (adiciona-imposto (item-preco item)) 
        :forca-magica (item-forca-magica item))) armas)))
      (mapcar (lambda (item)
        (format nil "Nome: ~A; Preco Final: R$~A; Forca Magica Final: ~A" (item-nome item) (item-preco item) (bonus-maldicao (item-forca-magica item))))
         armas-item))))

(format t "Fazendo o processo de venda: ~%")
(dolist (linha (processa-venda *catalogo*))
  (format t "~A~%" linha))