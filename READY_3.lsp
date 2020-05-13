; 1. Определите макрос, который возвращает свой вызов.

(defmacro self (&rest x)
  (list 'quote (cons 'self x)))
 
 (print(self 1 2 3))
 
 ; 2. Определите макрос (POP стек), который читает из стека верхний элемент именяет значение переменной стека.

(defmacro _POP (стек)
    `(let ((first (car ,стек)))
          (setq ,стек (cdr ,стек))
          first)
    )

(setq стек '(1 2 3 4 5))    
(print  (_POP стек))
(print стек)

 
; 3. Определите лисповскую форму(IF условие p q)в виде макроса.

(defmacro myif (условие p q)
    `(cond 
         (,условие ,p)
         (t ,q)
         )
    )

(print(myif (< 2 3) 'true 'false)) 

;4. Определите в виде макроса форму (FIF тест отр нуль полож).

(defmacro fif (тест отр нуль полож)
    (list `cond (list (< тест 0) отр)
                (list (> тест 0) полож)
                (list t нуль)
    )
)

(print (fif 1 -6 0 9))
