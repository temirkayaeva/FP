; работа с векторами

; Сложение векторов
(defun add-vect (v1 v2)
  (mapcar #'(lambda (x) (apply '+ x)) (mapcar 'list v1 v2)))

 ; Вычитание векторов 
 (defun sub-vect (v1 v2)
  (mapcar #'(lambda (x) (apply '- x)) (mapcar 'list v1 v2)))
  
; Умножение на скаляр
 (defun sm-vect (s v)
  (mapcar #'(lambda (x) (* x s)) v))
  
; Скалярное произведение
 (defun sc-vect (v1 v2)
 (apply '+ (mapcar #'(lambda (x) (apply '* x)) (mapcar 'list v1 v2))))
