-- "списки: [6, 16, 17, 21, 22], коды: [4], деревья: [1]"


-- 16. Определите предикат МНОЖЕСТВО-Р, который проверяет является ли список множеством,
-- т.е. входит ли каждый элемент списка в него лишь один раз.

plurality (x:xs)   = x `notElem` xs && plurality xs
plurality _        = True

-- 17. Определите функцию МНОЖЕСТВО, преобразующую список в множество.

removeduplicates = foldl (\seen x -> if x `elem` seen
                                      then seen
                                      else seen ++ [x]) []


-- 21. Определите функцию ПЕРЕСЕЧЕНИЕ, формирующую пересечение двух множеств, т.е. множество из их общих элементов.

intersect [] _ = []
intersect (x:xs) ys
    | x `elem` ys = x : intersect xs ys
    | otherwise = intersect xs ys


-- 22. Оределите функцию ОБЪЕДИНЕНИЕ, формирующую объединение двух множеств.

union1 s1 s2 = s1 ++ (filter (\ x -> not (x `elem` s1)) s2) 

main = do
    print "TASK 16"
    print "Test 1"
    print $ plurality [1,2,3]
    print "Test 2"
    print $ plurality [1,2,1]
    print "TASK 17"
    print "Test 1"
    print $ removeduplicates [1,2,3]
    print "Test 2"
    print $ removeduplicates [1,2,1]
    print "TASK 21"
    print "Test 1"
    print $ intersect [1, 2] [1]
    print "Test 2"
    print $ intersect [1, 2] []
    print "Test 3"
    print $ intersect [1, 2] [3, 4]
    print "TASK 22"
    print "Test 1"
    print $ union1 [1, 2] [1]
    print "Test 2"
    print $ union1 [1, 2] [3]
