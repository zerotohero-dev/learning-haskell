reverse' :: [a] -> [a] 
reverse' = foldl (\acc x -> x : acc) []

reverse2 :: [a] -> [a]
reverse2 = foldl (flip (:)) []

product' :: (Num a) => [a] -> a 
product' = foldl (*) 1

filter' :: (a -> Bool) -> [a] -> [a] 
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

-- filter' (\x -> x `mod` 2 == 0) [1,2,3,4]

last' :: [a] -> a 
last' = foldl1 (\_ x -> x)

flipr = flip (:)

-- figure this out before next meeting. paste it to group!!!
reversed = foldl flipr [] [1,2,3]
reversed = foldl (flip (:)) [] [1,2,3]

and' :: [Bool] -> Bool 
and' = foldr (&&) True

test1 = and' [True, False, True]
test2 = and' [True, True, True]
test3 = and' (repeat False)

