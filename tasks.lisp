; задачи 15 5 7 11 12 13 19 31 41 47 48

; Oпределите функцию, которая увеличивает элементы исходного списка на единицу.

(defun inc-list (lst) (
                       cond ((null lst) NIL)
                       (t (cons (+ (car lst) 1) 
                                (inc-list(cdr lst)))
                          )
                       )
  )

(inc-list '(1 2 3))

; Oпределите функцию, удаляющую из исходного списка элементы с четными номерами

(defun del-even (lst) (
                       cond ((null lst) NIL)
                       (t (cons (car lst)
                                (del-even(cddr lst)))
                          )
                       )
  )

(del-even '(1 2 3 4 5 6))
