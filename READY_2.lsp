; 1. Определите FUNCALL через функционал APPLY.

(defun -funcall (функция &rest аргументы) 
    (apply функция аргументы))

(print(-funcall `+ 1 2 3 4))
