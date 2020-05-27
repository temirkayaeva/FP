-- "списки: [6, 16, 17, 21, 22], коды: [4], деревья: [1]"


-- 16. Определите предикат МНОЖЕСТВО-Р, который проверяет является ли список множеством,
-- т.е. входит ли каждый элемент списка в него лишь один раз.

plurality (x:xs)   = x `notElem` xs && task1 xs
plurality _        = True

-- 22. Оределите функцию ОБЪЕДИНЕНИЕ, формирующую объединение двух множеств.

union1 s1 s2 = s1 ++ (filter (\ x -> not (x `elem` s1)) s2) 

main = do
    print "TASK 22"
    print "Test 1"
    print $ union1 [1, 2] [1]
    print "Test 2"
    print $ union1 [1, 2] [3]
    print "TASK 16"
    print "Test 1"
    print $ plurality "123"
    print "Test 2"
    print $ plurality "1231"
