; задачи 15	5	7	11 12 13 19 31 41 47 48

; Oпределите функцию, которая увеличивает элементы исходного списка на единицу.

(defun inc-list (lst) (
cond 
(( null lst) NIL)
(t (cons (+ (car lst) 1) (inc-list(cdr lst)))
)
)
)

(inc-list(1 2 3))

