; задачи 15 5 7 11 12 13 19 31 41 47 48

; 12:  Определите функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним

(defun task (lst)
    ((lambda (первый)
         (cond
            ((null lst)
                 NIL)
            ((equal первый (cadr lst))
                 (cons первый (task (cddr lst))))
            (t
                 (cons первый (task (cdr lst))))
         )) (car lst)) 
)


(print(task '(1 1 1 2 2 2))) 
(print(task '(1 2 3)))
(print(task '(2 2 2 2 2 2 2 3))) 


; 13. Определите функцию, удаляющую в исходном списке все повторные вхождения элементов.

(defun memb (a lst) 
	(if (null lst) nil 
		(if (equal a (car lst)) 
			t (memb a (cdr lst))
		)
	)
)


(defun task (lst); 
  (cond ((null lst) nil)
   ((memb (car lst) (cdr lst)) (task (cdr lst)))
   (T (cons (car lst) (task (cdr lst))))))

 
(print(task '(1 2 3 3 3)))


; 11. Определите функцию, осуществляющую разделение исходного списка на два подсписка. В первый из них должно попасть указанное количество элементов с начала списка, во второй — оставшиеся элементы.

(defun task (lst n)
 (if lst
  (if (zerop n)
   (cons nil (cons lst nil))
   ((lambda (elem result)
     (cons
      (cons elem (car result))
      (cdr result)))
    (car lst)
    (task (cdr lst) (1- n))))))

(print(task '(a b c d e f g) 3))
(print(task '(a b c d e f g) 1))
(print(task '(a b c d e f g) 0))

; 19: Определите функцию (ЛУКОВИЦА n), строящую N-уровневый вложенный список, элементом которого на самом глубоком уровне является N.

(defun onion (a n)
  (cond ((zerop n) a)
   (t (cons (onion a (- n 1)) nil))))
 
(print(onion 4 4))
(print(onion 3 3))
(print(onion 2 2))

;31. Определите функцию (ПЕРВЫЙ-СОВПАДАЮЩИЙ х у), которая возвращает первый элемент, входящий в оба списка х и у, в противном случае NIL.


; —— Зачтены —-- 

; 5: Oпределите функцию, которая увеличивает элементы исходного списка на единицy

(defun inc-list (lst) (
                       cond ((null lst) NIL)
                       (t (cons (+ (car lst) 1) 
                                (inc-list(cdr lst)))
                          )
                       )
  )

(print(inc-list '(1 2 3)))
(print(inc-list '(0)))
(print(inc-list '(0)))

; 7: Oпределите функцию, удаляющую из исходного списка элементы с четными номерами

(defun del-even (lst) (
                       cond ((null lst) NIL)
                       (t (cons (car lst)
                                (del-even(cddr lst)))
                          )
                       )
  )

(print(del-even '(1 2 3 4 5 6)))
(print(del-even '(1)))
(print(del-even '())) 

;15: Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.

(defun scal-prod (lst1 lst2)
  (if (or (null lst1)(null lst2)) 0
		(+ (* (car lst1) (car lst2)) (scal-prod (cdr lst1) (cdr lst2)))))

(print(scal-prod '(1 2 3) '(1 2 3)))
(print(scal-prod '(0) '(1 2 3)))


