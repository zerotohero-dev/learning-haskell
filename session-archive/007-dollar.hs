-- ($) :: (a -> b) -> a -> b 
-- f $ x = f x

-- f a b c === (((f a) b) c)

test1 = sum (map sqrt [1..130])
test2 = sum $ map sqrt [1..130]
test3 = sqrt (3 + 4 + 9)
test4 = sqrt $ 3 + 4 + 9

test5 = sum (filter (> 10) (map (*2) [2..10]))
test6 = sum $ filter (> 10) (map (*2) [2..10])
test7 = sum $ filter (> 10) $ map (*2) [2..10]

test8 = map ($ 3) [(/4), (10*), (^2), sqrt]
