; работа с векторами

(defun add-vect (v1 v2)
  (mapcar #'(lambda (x) (apply '+ x)) (mapcar 'list v1 v2)))
  
 (defun sub-vect (v1 v2)
  (mapcar #'(lambda (x) (apply '- x)) (mapcar 'list v1 v2)))
  
 (defun sm-vect (s v)
  (mapcar #'(lambda (x) (* x s)) v))
  
 (defun sc-vect (v1 v2)
 (apply '+ (mapcar #'(lambda (x) (apply '* x)) (mapcar 'list v1 v2))))
