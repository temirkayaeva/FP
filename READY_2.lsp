; 1. Определите FUNCALL через функционал APPLY.

(defun -funcall (функция &rest аргументы) 
    (cond
        ((null аргументы) nil)
        (t (apply функция аргументы)
          )
        )
    )

(print(-funcall `* 1 2 3 4))


; 3. Определите функционал(APL-APPLY f x), который применяет каждую функ-цию fi списка(f1 f2 ... fn) к соответствующему 
; элементу спискаx = (x1 x2 ... xn) и возвращает список, сформированный из результатов.

(defun apl-apply (список-функций список-элементов)
  (cond 
      ((null список-функций) nil) 
      ((null список-элементов) nil)
        (t (cons (funcall (car список-функций) (car список-элементов))
               (apl-apply (cdr список-функций) (cdr список-элементов))))))


(print(apl-apply `(car cadr cdr) `((1 4 6) (1 2 3) (6 8 9))))

