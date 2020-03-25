; задачи 15 5 7 11 12 13 19 31 41 47 48

; 5: Oпределите функцию, которая увеличивает элементы исходного списка на единицy

(defun inc-list (lst) (
                       cond ((null lst) NIL)
                       (t (cons (+ (car lst) 1) 
                                (inc-list(cdr lst)))
                          )
                       )
  )

; (inc-list '(1 2 3)) 2 3 4
; (inc-list '(0)) 1
; (inc-list '(0)) NIL

; 7: Oпределите функцию, удаляющую из исходного списка элементы с четными номерами

(defun del-even (lst) (
                       cond ((null lst) NIL)
                       (t (cons (car lst)
                                (del-even(cddr lst)))
                          )
                       )
  )

; (del-even '(1 2 3 4 5 6)) (1 3 5) 
; (del-even '(1)) (1) 
; (del-even '()))  NIL 

; 12:  Определите функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним

(defun task (lst) (
                   cond ((null lst) NIL)
                   ((equal (car lst) 
                           (cadr lst)
                           ) 
                    (cons (car lst) 
                          (task (cddr lst))
                          )
                    )
                   (t (cons (car lst) 
                            (task (cdr lst)))
                      )
                   )
  )

; (task '(1 1 1 2 2 2))) 1 1 2 2
; (task '(1 2 3))) 1 2 3
; (task '(2 2 2 2 2 2 2 3))) (2 2 2 2 3) 

;15: Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.

(defun scal-prod (lst1 lst2)
    (cond ((null lst1) 0)
		(t(+ (* (car lst1) (car lst2)) (scal-prod (cdr lst1) (cdr lst2))))))

; (scal-prod '(1 2 3) '(1 2 3)) 14
; (scal-prod '(0) '(1 2 3)) 0

; 19: Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N.

(defun task (n &optional (k n))
  (if (equal n 0) k
      (task (- n 1) (list k))))

; (task 3) (((3)))
; (task 0) 0
; (task 5) (((((5)))))
