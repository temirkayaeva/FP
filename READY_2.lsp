; 1. Определите FUNCALL через функционал APPLY.

(defun -funcall (функция &rest аргументы) 
    (cond
        ((null аргументы) nil)
        (t (apply функция аргументы)
          )
        )
    )

(print(-funcall `* 1 2 3 4))
